#include "minic-stdlib.h"

int sum(int a, int b, int c) {
    return a + b + c;
}

int doubleNum(int x) {
    return x * 2;
}

int square(int x) {
    return x * x;
}

int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}

void factorial_helper(int max) {
    int count;
    count = 0;
    while (count <= 10) {
            print_i(factorial(count));
            if (count < max) {
                print_s((char *)", ");
            }
            count = count + 1;
        }
}

void main() {
    // expect 60
    print_s((char *) "10 + 20 + 30 = ");
    print_i(sum(10, 20, 30));
    print_c('\n');

    // expect 64
    print_s((char *) "(4 * 2)^2 = ");
    print_i(square(doubleNum(4)));
    print_c('\n');

    // FACTORIAL
    print_s((char *) "Factorial from 0 to 10 = ");
    factorial_helper(10);
    print_c('\n');
}

// java -cp bin Main3 -gen src/test/code_gen_tests/c_files/funCall.c src/test/code_gen_tests/asm_files/funCall.asm
