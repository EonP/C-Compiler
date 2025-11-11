#include "minic-stdlib.h"

void main() {
    print_s((char*)"Hello,world!\n");
    print_i(24);
    print_c('\n');
    print_c('c');
}


// java -cp bin Main3 -gen src/test/code_gen_tests/c_files/prints.c src/test/code_gen_tests/asm_files/prints.asm
