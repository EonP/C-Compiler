package sem;

import ast.*;

import java.util.*;

public class NameAnalyzer extends BaseSemanticAnalyzer {

	private Scope scope;

	private final Set<String> undefinedFunctions = new HashSet<>();
	private final Set<FunCallExpr> unresolvedCalls = new HashSet<>();
	private final Map<String, ClassDecl> classDecls = new HashMap<>();
	private final Map<String, Scope> classScopes = new HashMap<>();
	private boolean isClassFunction = false;
	private boolean isClassFunctionCall = false;

	public NameAnalyzer() {
		scope = new Scope();
	}

	public void visit(ASTNode node) {
		switch(node) {
			case null -> throw new IllegalStateException("Unexpected null value");

			case Program p -> {
				for (FunDef fundef : Program.builtInFuncDecls()) {
					visit(fundef);
				}
				for (Decl decl : p.decls) {
					visit(decl);
				}
				for (String f : undefinedFunctions) {
					error("Function '" + f + "' is declared but never defined.");
				}
			}

            case ClassDecl currentClass -> {
				if (classDecls.containsKey(currentClass.name)) {
					error("Class '" + currentClass.name + "' already declared in global scope");
				}

				Scope oldScope = scope;
				scope = new Scope(oldScope);

				if (currentClass.extendsType != null) {
					String superName = currentClass.extendsType.name;
					if (!classDecls.containsKey(superName)) {
						error("Superclass '" + superName + "' does not exist");
					} else {
						ClassDecl superClass = classDecls.get(superName);
						currentClass.methodMap.putAll(superClass.methodMap);

						collectInheritedMembers(currentClass);

						currentClass.fields.forEach(this::visit);
						isClassFunction = true;
						currentClass.functions.forEach(method -> {
							visit(method);
							currentClass.methodMap.put(method.name, method);
						});
						isClassFunction = false;
					}
				} else {
					currentClass.fields.forEach(this::visit);
					currentClass.functions.forEach(method -> {
						visit(method);
						currentClass.methodMap.put(method.name, method);
					});
				}
				classDecls.put(currentClass.name, currentClass);
				classScopes.put(currentClass.name, scope);
				scope = oldScope;
            }

			case StructTypeDecl sd -> {
				Scope oldScope = scope;
				scope = new Scope(oldScope);
				for (VarDecl field : sd.fields) {
					visit(field);
				}
				scope = oldScope;
			}

			case VarDecl vd -> {
				Symbol sym = scope.lookupCurrent(vd.name);
				if (sym != null) {
					error("'" + vd.name + "' is already defined in the same scope.");
				} else {
					scope.put(new VarSymbol(vd));
				}
			}

			case FunDecl fd -> {
				Symbol sym = scope.lookupCurrent(fd.name);
				switch (sym) {
					case VarSymbol ignored ->
							error("Function'" + fd.name + "' already exists as a variable in the same scope.");

					case FunSymbol fs -> {
						if (fs.funDecl != null) {
							error("Function '" + fd.name + "' is already declared.");
						} else if (fs.funDef != null) {
							if (!fs.funDef.type.equals(fd.type)) {
								error("Return type of function '" + fd.name + "' is different in its definition and declaration");
							}
							if (!paramTypesMatch(fs.funDef.params, fd.params)) {
								error("Parameter types of function '" + fd.name + "' are different in its definition and declaration");
							}
							fs.funDecl = fd;
						}
					}

					case null, default -> {
						scope.put(new FunSymbol(fd));
						undefinedFunctions.add(fd.name);
					}
				}

				Scope oldScope = scope;
				scope = new Scope(oldScope);
				for (VarDecl param : fd.params) {
					visit(param);
				}
				scope = oldScope;
			}

			case FunDef fd -> {
				Symbol sym = scope.lookupCurrent(fd.name);
				switch (sym) {
					case VarSymbol ignored ->
							error("Function'" + fd.name + "' already exists as a variable in the same scope.");

					case FunSymbol fs -> {
						if (fs.funDef != null) {
							if (isClassFunction) {
								if (!fs.funDef.type.equals(fd.type)) {
									error("Function '" + fd.name + "' return type mismatch in override");
								}
								if (!paramTypesMatch(fs.funDef.params, fd.params)) {
									error("Function '" + fd.name + "' parameter types mismatch in override");
								}
								fs.funDef = fd;
							} else {
								error("Function '" + fd.name + "' is already defined.");
							}
						} else if (fs.funDecl != null) {
							if (!fs.funDecl.type.equals(fd.type)) {
								error("Return type of function '" + fd.name + "' is different in its definition and declaration");
							}
							if (!paramTypesMatch(fs.funDecl.params, fd.params)) {
								error("Parameter types of function '" + fd.name + "' are different in its definition and declaration");
							}
							fs.funDef = fd;
							undefinedFunctions.remove(fd.name);
						}
					}

					case null, default -> scope.put(new FunSymbol(fd));
				}

				unresolvedCalls.removeIf(fe -> {
					if (fe.name.equals(fd.name)) {
						fe.fd = fd;
						return true;
					}
					return false;
				});

				Scope oldScope = scope;
				scope = new Scope(oldScope);
				for (ASTNode n : fd.children()) {
					visit(n);
				}
				scope = oldScope;
			}

			case Block b -> {
				Scope oldScope = scope;
				scope = new Scope(oldScope);
				for (VarDecl varDecl : b.vds)
					visit(varDecl);
				for (Stmt stmt : b.stmts)
					visit(stmt);
				scope = oldScope;
			}

			case VarExpr ve -> {
				Symbol sym = scope.lookup(ve.name);
				switch (sym) {
					case VarSymbol vs -> ve.vd = vs.varDecl;
					case null, default -> error("Variable '" + ve.name + "' is not defined in the global scope");
				};
			}

			case InstanceFunCallExpr ife -> {
				visit(ife.classInstance);
				isClassFunctionCall = true;
				visit(ife.classFunction);
				isClassFunctionCall = false;
			}

			case FunCallExpr fe -> {
				if (isClassFunctionCall) {
					fe.args.forEach(this::visit);
				} else {
					Symbol sym = scope.lookup(fe.name);
					switch (sym) {
						case VarSymbol ignored -> error("Function' " + fe.name + "' is shadowed by a variable.");
						case FunSymbol fs -> {
							if (fs.funDef != null) {
								fe.fd = fs.funDef;
							} else {
								unresolvedCalls.add(fe);
							}
						}
						case null, default -> error("Function '" + fe.name + "' is not defined in the global scope");
					}
					fe.args.forEach(this::visit);
				}
			}

			default -> {
				for (ASTNode c : node.children())
					visit(c);
			}
		};
	}

	private boolean paramTypesMatch(List<VarDecl> params1, List<VarDecl> params2) {
		if (params1.size() != params2.size()) {
			return false;
		}
		for (int i = 0; i < params1.size(); ++i) {
			if (!params1.get(i).type.equals(params2.get(i).type)) {
				return false;
			}
		}
		return true;
	}

	private void collectInheritedMembers(ClassDecl classDecl) {

		if (classDecl.extendsType == null) {
			return;
		}

		ClassDecl superClass = classDecls.get(classDecl.extendsType.name);
		if (superClass == null) {
			error("Superclass '" + classDecl.extendsType.name + "' does not exist");
			return;
		}

		collectInheritedMembers(superClass);

		for (VarDecl field : superClass.fields) {
			scope.put(new VarSymbol(field)); // override
		}
		for (FunDef funDef : superClass.functions) {
			scope.put(new FunSymbol(funDef)); // override
		}
	}


}
