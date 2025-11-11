struct s1 {
  char a;
  char b;
};

struct s2 {
    int a;
    int b;
    int c;
};

struct s3 {
    struct s1 array[4];
    char val;
};

struct s4 {
    char x;
    struct s2 s;
    char y;
};

struct s5 {
    int i;
};

struct s6 {
    char c;
};

void main() {
    struct s1 s1_a;
    struct s1 s1_b;
    struct s2 s2_a;
    struct s2 s2_b;
    struct s3 s3_a;
    struct s3 s3_b;
    struct s4 s4_a;
    struct s4 s4_b;

    s1_a.a = '1';
    s1_a.b = '2';

    s1_b = s1_a;
    print_c(s1_b.a); print_s((char *)", ");
    print_c(s1_b.b);
    print_c('\n');

    s2_a.a = 10;
    s2_a.b = 20;
    s2_a.c = 30;

    s2_b = s2_a;
    print_i(s2_b.a); print_s((char *)", ");
    print_i(s2_b.b); print_s((char *)", ");
    print_i(s2_b.c); print_c('\n');


    s1_b.a = '3';
    s1_b.b = '4';

    s3_a.array[0] = s1_a;
    s3_a.array[3] = s1_b;

    s3_b.array[0] = s1_b;
    s3_b.array[3] = s1_a;

    print_c(s3_a.array[0].a); print_s((char *)", ");
    print_c(s3_a.array[0].b); print_c('\n');
    print_c(s3_a.array[3].a); print_s((char *)", ");
    print_c(s3_a.array[3].b); print_c('\n');

    s3_a = s3_b;

    print_c(s3_a.array[0].a); print_s((char *)", ");
    print_c(s3_a.array[0].b); print_c('\n');
    print_c(s3_a.array[3].a); print_s((char *)", ");
    print_c(s3_a.array[3].b); print_c('\n');

    s4_a.x = 'x';
    s4_a.s = s2_a;
    s4_a.y = 'y';

    print_c(s4_a.x); print_s((char *)", ");
    print_i(s4_a.s.a); print_s((char *)", ");
    print_i(s4_a.s.b); print_s((char *)", ");
    print_i(s4_a.s.c); print_s((char *)", ");
    print_c(s4_a.y); print_c('\n');

    s2_a.a = 30;
    s2_a.b = 20;
    s2_a.c = 10;

    s4_b.x = 'y';
    s4_b.s = s2_a;
    s4_b.y = 'x';

    print_c(s4_b.x); print_s((char *)", ");
    print_i(s4_b.s.a); print_s((char *)", ");
    print_i(s4_b.s.b); print_s((char *)", ");
    print_i(s4_b.s.c); print_s((char *)", ");
    print_c(s4_b.y); print_c('\n');
}






// java -cp bin Main3 -gen src/test/code_gen_tests/c_files/structs.c src/test/code_gen_tests/asm_files/structs.asm