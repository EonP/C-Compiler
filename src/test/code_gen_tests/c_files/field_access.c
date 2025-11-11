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
    struct s5 easy;
    struct s6 mid;
    struct s2 ints;
    struct s1 chars;
    struct s4 hard;
    struct s3 mega;

    easy.i = 5;
    print_i(easy.i);
    print_c('\n');

    mid.c = 'a';
    print_c(mid.c);
    print_c('\n');

    ints.a = 10;
    ints.b = 20;
    ints.c = 30;

    print_i(ints.a);
    print_s((char*)", ");
    print_i(ints.b);
    print_s((char*)", ");
    print_i(ints.c);
    print_c('\n');

    chars.a = 'a';
    chars.b = 'b';
    print_c(chars.a);
    print_s((char*)", ");
    print_c(chars.b);
    print_c('\n');

    hard.x = 'a';
    hard.s.a = 10;
    hard.s.b = 20;
    hard.s.c = 30;
    hard.y = 'b';

    print_c(hard.x); print_s((char*)", ");
    print_i(hard.s.a); print_s((char*)", "); print_i(hard.s.b); print_s((char*)", "); print_i(hard.s.c); print_s((char*)", ");
    print_c(hard.y);
    print_c('\n');

    mega.array[2].a = 'x';
    mega.array[3].b = 'y';

    print_c(mega.array[2].a); print_s((char*)", "); print_c(mega.array[3].b);
    print_c('\n');
}
