# C-Compiler 

A C compiler that compiles a subset of C, which is defined by the [syntax grammar](./tools/syntax_grammar.txt).

<br> Built-in functions
```C
void print_s(char* s);
void print_i(int i);
void print_c(char c);
char read_c();
int read_i();
void* mcmalloc(int size);
```

## Requirements ##

A recent JDK version (21 or higher)
```bash
javac -version
```
- https://docs.oracle.com/en/java/javase/21/install/overview-jdk-installation.html

Apache Ant as the build system
```bash
ant -version
```
- https://ant.apache.org/manual/install.html

## Using the compiler ##

To run a C program with this compiler:

1. Place your C source file inside the `c_files/` folder (for example: `c_files/test.c`)

2. In the project root directory, run:
```bash
./compile_and_run.sh c_files/test.c
```

3. The compiler will:
    * Build the project using Ant (``` ant build ```)
    * Compile the C file into MIPS assembly -> the generated assembly file will appear in the asm_files/ folder (e.g. asm_files/test.asm)
    * Execute the MIPS program automatically using the MARS simulator in `tools/` folder

## Try it out! ##

Clone the project and from the root directory, run 
```bash
./compile_and_run.sh c_files/tictactoe.c
```
or 
```bash
./compile_and_run.sh c_files/fib.c
```






