#include "minic-stdlib.h"

void main() {
  int n;
  int first;
  int second;
  int next;
  int c;
  char t;

  // read n from the standard input
  n = read_i();
  // n = 5;

  first = 0;
  second = 1;

  print_s((char*)"First ");
  print_i(n);
  print_s((char*)" terms of Fibonacci series are : ");

  c = 0;
  while (c < n) {
    if ( c <= 1 )
      next = c;
    else
      {
	next = first + second;
	first = second;
	second = next;
      }
    print_i(next);
    print_s((char*)" ");
    c = c+1;
  }
}

// java -cp bin Main4 -gen colour src/test/code_gen_tests/c_files/fib.c src/test/code_gen_tests/regallocfiles/fib.asm

// java -cp bin Main3 -gen src/test/code_gen_tests/c_files/fib.c src/test/code_gen_tests/asm_files/fib.asm


