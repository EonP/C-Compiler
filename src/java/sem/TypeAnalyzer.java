package sem;

import ast.*;

import java.util.*;

public class TypeAnalyzer extends BaseSemanticAnalyzer {

	private final Map<String, StructTypeDecl> declaredStructs = new HashMap<>();
    private final Map<String, ClassDecl> declaredClasses = new HashMap<>();
	private FunDef currentFunction;
	private int loopCounter = 0;

	public Type visit(ASTNode node) {

		return switch(node) {
			case null -> {
				throw new IllegalStateException("Unexpected null value");
			}

			case Type type -> {
				if (type instanceof ArrayType at) {
					Type t = visit(at.type);
					if (t instanceof BaseType bt && bt == BaseType.VOID) {
						error("cannot declare a array with elements of type Void");
						yield BaseType.NONE;
					}
					yield at;
				}

				if (type instanceof PointerType pt) {
					visit(pt.type);
				}

				if (type instanceof StructType st) {
					if (!declaredStructs.containsKey(st.name)) {
						error("struct type '" + st.name + "' without being declared");
					} else {
						if (st.std == null) {
							st.std = declaredStructs.get(st.name);
						}
					}
				}

                if (type instanceof ClassType ct) {
                    if (!declaredClasses.containsKey(ct.name)) {
                        error("class type '" + ct.name + "' without being declared");
                    }
                }

				yield type;
			}

            case ClassDecl cd -> {
                if (declaredClasses.containsKey(cd.name)) {
                     error("class '" + cd.name + "' already declared");
                } else {
                    declaredClasses.put(cd.name, cd);
                }
				if (cd.extendsType != null) {
					visit(cd.extendsType);
				}
                cd.fields.forEach(this::visit);                
                cd.functions.forEach(this::visit);  
                yield BaseType.NONE;
            }

			case StructTypeDecl std -> {
				String structName = std.name;

				if (declaredStructs.containsKey(structName)) {
					error("struct '" + structName + "' is declared multiple times");
				} else {
					declaredStructs.put(structName, std);
				}

				for (VarDecl field : std.fields) {
					visit(field.type);
					// check for recursive struct definition
					Type fieldType = field.type;
					while (fieldType instanceof ArrayType at) {
						fieldType = at.type;
					}
					if (fieldType instanceof BaseType bt && bt == BaseType.VOID) {
						error("cannot declare a variable with type Void");
					}
					if (fieldType instanceof StructType st && st.name.equals(structName)) {
						error("recursive struct reference - cannot infer size");
					}
				}
				yield BaseType.NONE;
			}

			case VarDecl vd -> {
				if (vd.type instanceof BaseType bt && bt == BaseType.VOID) {
					error("cannot declare a variable with type Void");
				}
				visit(vd.type);
				yield BaseType.NONE;
			}

			case FunDecl fd -> {
				for (ASTNode n : fd.children())
					visit(n);
				yield BaseType.NONE;
			}

			case FunDef fd -> {
				currentFunction = fd;
				for (ASTNode n : fd.children())
					visit(n);
				currentFunction = null;
				yield BaseType.NONE;
			}

			case IntLiteral i -> {
				i.type = BaseType.INT;
				yield i.type;
			}

			case StrLiteral s -> {
				s.type = new ArrayType(BaseType.CHAR, s.str.length() + 1);
				yield s.type;
			}

			case ChrLiteral c -> {
				c.type = BaseType.CHAR;
				yield c.type;
			}

			case VarExpr varExpr -> {
				if (varExpr.vd == null) {
					// error("variable '" + varExpr.name + "' has not been declared");
					// error already caught by name analyser
					varExpr.type = BaseType.NONE;
				} else {
					varExpr.type = varExpr.vd.type;
				}
				yield varExpr.type;
			}

			case FunCallExpr funCallExpr -> {
				if (funCallExpr.fd == null) {
					// System.out.println("here");
					error("function '" + funCallExpr.name + "' has not been defined");
					funCallExpr.type = BaseType.NONE;
					yield funCallExpr.type;
				}
				List<VarDecl> params = funCallExpr.fd.params;
				List<Expr> args = funCallExpr.args;
				if (params.size() != args.size()) {
					error("number of arguments does not equal the expected number of parameters");
					funCallExpr.type = BaseType.NONE;
					yield funCallExpr.type;
				}
				for (int i = 0; i < params.size(); ++i) {
					Type argType = visit(args.get(i));
					Type paramType = params.get(i).type;
					if (!paramType.equals(argType)) {
						error("Argument '" + i + "' has incorrect type - Expected " + paramType + " but found " + argType);
						funCallExpr.type = BaseType.NONE;
						yield funCallExpr.type;
					}
				}
				funCallExpr.type = funCallExpr.fd.type;
				yield funCallExpr.type;
			}

            case InstanceFunCallExpr ife -> {
                Type classInstanceType = visit(ife.classInstance);
				if (classInstanceType instanceof ClassType classType) {
					ClassDecl classDecl = declaredClasses.get(classType.name);
					if (classDecl == null) {
						error("problem instance fce");
						yield BaseType.NONE;
					}
					if (classDecl.methodMap.containsKey(ife.classFunction.name)) {
						System.out.println(ife.classFunction.name);
						ife.classFunction.fd = classDecl.methodMap.get(ife.classFunction.name);
						ife.type = visit(ife.classFunction);
					} else {
						error("Method '" + ife.classFunction.name + "' not in class");
						ife.type = BaseType.NONE;
					}

					yield ife.type;
				} else {
					error("InstanceFunCallExpr lhs is not Class Type");
					ife.type = BaseType.NONE;
					yield ife.type;
				}


            }

			case BinOp binOp -> {
				Type lhsT = visit(binOp.lhs);
				Type rhsT = visit(binOp.rhs);

				if (binOp.op == Op.NE || binOp.op == Op.EQ) {
					if (lhsT instanceof StructType || lhsT instanceof ArrayType || (lhsT instanceof BaseType bt1 && bt1 == BaseType.VOID) ||
							rhsT instanceof StructType || rhsT instanceof ArrayType || rhsT instanceof BaseType bt2 && bt2 == BaseType.VOID) {
						error("Binary operation '" + binOp.op + "' cannot be used with StructType, ArrayType, or void");
						binOp.type = BaseType.NONE;
						yield binOp.type;
					}

					if (!lhsT.equals(rhsT)) {
						error("Binary operations require requires both operands to have the same type");
						binOp.type = BaseType.NONE;
						yield binOp.type;
					}

					binOp.type = BaseType.INT;
					yield binOp.type;
				}

				if (lhsT instanceof BaseType bt1 && bt1 == BaseType.INT
						&& rhsT instanceof BaseType bt2 && bt2 == BaseType.INT) {
					binOp.type = BaseType.INT;
					yield binOp.type;
				}

				error("Both operands must be of type Int");
				binOp.type = BaseType.NONE;
				yield binOp.type;
			}

			case ArrayAccessExpr accessExpr -> {
				Type lhsT = visit(accessExpr.array);
				Type rhsT = visit(accessExpr.index);
				if (!(rhsT instanceof BaseType bt && bt == BaseType.INT)) {
					error("indexing must be done with an int");
					accessExpr.type = BaseType.NONE;
					yield accessExpr.type;
				}
				yield switch (lhsT) {
					case ArrayType at -> {
						accessExpr.type = at.type;
						yield accessExpr.type;
					}
					case PointerType pt -> {
						accessExpr.type = pt.type;
						yield accessExpr.type;
					}
					default -> {
						error("The expression is not an array type or pointer type");
						accessExpr.type = BaseType.NONE;
						yield accessExpr.type;
					}
				};
			}

			case FieldAccessExpr accessExpr -> {
				Type exprType = visit(accessExpr.structOrClass);
				if (exprType instanceof StructType st) {
					if (!declaredStructs.containsKey(st.name)) {
						error("struct '" + st.name + "' is not declared before use");
                    } else {
						StructTypeDecl structDecl = declaredStructs.get(st.name);
						for (VarDecl field : structDecl.fields) {
							if (field.name.equals(accessExpr.fieldName)) {
								accessExpr.type = field.type;
								yield accessExpr.type;
							}
						}
						error("field used is not in corresponding struct declaration");
                    }
                    accessExpr.type = BaseType.NONE;
                    yield accessExpr.type;
                } else if (exprType instanceof ClassType ct) {
                    if (!declaredClasses.containsKey(ct.name)) {
                        error("Class not declared for field access");
                        accessExpr.type = BaseType.NONE;
                        yield accessExpr.type;
                    } 
                    ClassDecl cd = declaredClasses.get(ct.name);
                    VarDecl field = lookUpClassField(cd, accessExpr.fieldName);
                    if (field == null) {
                        error("field used is not in class or superclass");
                        accessExpr.type = BaseType.NONE;
                        yield accessExpr.type;

                    } else {
                        accessExpr.type = field.type;
                        yield accessExpr.type;
                    } 
                }
				error("field access can only be done with struct types or class types");
				accessExpr.type = BaseType.NONE;
				yield accessExpr.type;
			}

            case NewInstance i -> {
                i.type = visit(i.newInstanceType);
               yield i.type;
            }

			case ValueAtExpr valueAtExpr -> {
				if (visit(valueAtExpr.expr) instanceof PointerType pt) {
					valueAtExpr.type = pt.type;
				} else {
					error("attempting to access the value of something other than a pointer type");
					valueAtExpr.type = BaseType.NONE;
				}
				yield valueAtExpr.type;
			}

			case AddressOfExpr addressOfExpr -> {
				if (!isLValue(addressOfExpr.expr)) {
					error("Operand of address-of expression must be an lvalue");
				}
				addressOfExpr.type = new PointerType(visit(addressOfExpr.expr));
				yield addressOfExpr.type;
			}

			case SizeOfExpr sizeOfExpr -> {
				visit(sizeOfExpr.innerType);
				sizeOfExpr.type = BaseType.INT;
				yield sizeOfExpr.type;
			}

			case TypecastExpr typecastExpr -> {
				Type typeCastType = visit(typecastExpr.typecastType);
				Type exprType = visit(typecastExpr.expr);
				yield switch (exprType) {
					case BaseType.CHAR -> {
						if (typecastExpr.typecastType instanceof BaseType bt && bt == BaseType.INT) {
							typecastExpr.type = BaseType.INT;
						} else {
							error("can only typecast char to int");
							typecastExpr.type = BaseType.NONE;
						}
						yield typecastExpr.type;
					}
					case ArrayType at -> {
						Type elemType = at.type;
						if (typecastExpr.typecastType instanceof PointerType pt) {
							if (pt.type.equals(elemType)) {
								typecastExpr.type = new PointerType(elemType);
								yield typecastExpr.type;
							}
						}
						error("incorrect array to pointer typecast");
						typecastExpr.type = BaseType.NONE;
						yield typecastExpr.type;
					}
					case PointerType ignored -> {
						if (typecastExpr.typecastType instanceof PointerType pt2) {
							typecastExpr.type = new PointerType(pt2.type);
						} else {
							error("expected Pointer type for the operand of the type cast");
							typecastExpr.type = BaseType.NONE;
						}
						yield typecastExpr.type;
					}
                    case ClassType ct1 -> {
                        if (typeCastType instanceof ClassType ct2) {
                            if (!declaredClasses.containsKey(ct1.name) || !declaredClasses.containsKey(ct2.name)) {
                                error("typecasting with incorrect class names -> something is wrong");
                                typecastExpr.type = BaseType.NONE;
                                yield typecastExpr.type;
                            }
                            ClassDecl c1Decl = declaredClasses.get(ct1.name);
                            ClassDecl c2Decl = declaredClasses.get(ct2.name);

                            if (isChild(c1Decl, c2Decl)) {
                                typecastExpr.type = ct2; 
                                yield typecastExpr.type;
                            } else {
                                error("typecasting with incorrect class names -> something is wrong");
                                typecastExpr.type = BaseType.NONE;
                                yield typecastExpr.type;
                            }

                        } else {
                            error("incorrect type for typecast expression");
                            typecastExpr.type = BaseType.NONE;
                            yield typecastExpr.type;
                        }
                    }
					default -> {
						error("incorrect type for typecast expression");
						typecastExpr.type = BaseType.NONE;
						yield typecastExpr.type;
					}
				};
			}

			case Assign assign -> {
				if (!isLValue(assign.lhs)) {
					error("only L values can be to the left of an assignment");
				}

				Type lhsT = visit(assign.lhs);
				Type rhsT = visit(assign.rhs);

				if (!lhsT.equals(rhsT)) {
					error("left and right operand types don't match");
					assign.type = BaseType.NONE;
					yield assign.type;
				}

				if ((lhsT instanceof BaseType bt && bt == BaseType.VOID) || lhsT instanceof ArrayType) {
					error("cannot assign void types or array type");
					assign.type = BaseType.NONE;
					yield assign.type;
				}

				assign.type = lhsT;
				yield assign.type;
			}

			case While whileStmt -> {
				Type condType = visit(whileStmt.condition);
				if (!(condType instanceof BaseType bt && bt == BaseType.INT)) {
					error("while condition must be of type int");
				}
				loopCounter += 1;
				visit(whileStmt.statement);
				loopCounter -= 1;
				yield BaseType.NONE;
			}

			case If ifStmt -> {
				Type condType = visit(ifStmt.condition);
				if (!(condType instanceof BaseType bt && bt == BaseType.INT)) {
					error("if condition must be of type int");
				}
				visit(ifStmt.ifStatement);
				if (ifStmt.elseStatement != null) {
					visit(ifStmt.elseStatement);
				}
				yield BaseType.NONE;
			}

			case Return returnStmt -> {
				if (currentFunction == null) {
					error("cannot have a return statement outside a function definition");
					yield BaseType.NONE;
				}
				Type returnType = currentFunction.type;
				if (returnStmt.returnExpression != null) {
					Type exprType = visit(returnStmt.returnExpression);
					if (!exprType.equals(returnType)) {
						error("return type mismatch: expected " + returnType + " but found " + exprType);
					}
				} else {
					if (!(returnType instanceof BaseType bt && bt == BaseType.VOID)) {
						error("return type mismatch: expected " + returnType + " but found VOID");
					}
				}
				yield BaseType.NONE;
			}

			case Continue ignored -> {
				if (loopCounter <= 0) {
					error("continue statement must be inside a loop");
				}
				yield BaseType.NONE;
			}

			case Break ignored -> {
				if (loopCounter <= 0) {
					error("break statement must be inside a loop");
				}
				yield BaseType.NONE;
			}


			default -> {
				for (ASTNode n : node.children())
					visit(n);
				yield BaseType.NONE;
			}

		};

	}

    private boolean isLValue(Expr expr) {
		return switch (expr) {
			case VarExpr ignored -> true;
			case FieldAccessExpr f -> isLValue(f.structOrClass);
			case ArrayAccessExpr a -> isLValue(a.array);
			case ValueAtExpr v -> isLValue(v.expr);
			default -> false;
		};
	}

    private VarDecl lookUpClassField(ClassDecl classDecl, String fieldName) {
        for (VarDecl field : classDecl.fields) {
            if (field.name.equals(fieldName)) {
                return field;
            }
        }

        // If superclass exists, recurse
        if (classDecl.extendsType != null) {
            ClassDecl superClass = declaredClasses.get(classDecl.extendsType.name);
            if (superClass == null) {
                error("something is wrong!!");
            } else {
                return lookUpClassField(superClass, fieldName);
            }
        }
        return null; // Not found
    }

    private boolean isChild(ClassDecl c1Decl, ClassDecl c2Decl) {
		if (c1Decl.name.equals(c2Decl.name)) {
			return true;
		}

        ClassDecl temp = c1Decl;
        while (temp.extendsType != null) {
            temp = declaredClasses.get(temp.extendsType.name);
            if (temp == null) {
                error("something wrong");
                break;
            }
            if (temp.name.equals(c2Decl.name)) {
                return true;
            }
        }
        return false;
    }


}
