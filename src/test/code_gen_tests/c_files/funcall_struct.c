
struct s1 {
  char a;
  char b;
};

struct s1 create_s1(char a, char b) {
    struct s1 s1;
    s1.a = a;
    s1.b = b;
    return s1;
}

void print_s1(struct s1 s) {
    print_c(s.a); print_s((char *)", ");
    print_c(s.b);
}

struct s2 {
    int a;
    int b;
    int c;
};

struct s2 create_s2(int a, int b, int c) {
    struct s2 s2;
    s2.a = a;
    s2.b = b;
    s2.c = c;
    return s2;
}

void modify_s2(struct s2 s) {
    s.a = 100;
    s.b = 200;
    s.c = 300;
}

void print_s2(struct s2 s) {
    print_i(s.a); print_s((char *)", ");
    print_i(s.b); print_s((char *)", ");
    print_i(s.c);
}

struct s3 {
    char x;
    struct s2 s;
    char y;
};

struct s3 create_s3(char x, struct s2 s, char y) {
    struct s3 s3;
    s3.x = x;
    s3.s = s;
    s3.y = y;
    return s3;
}

void print_s3(struct s3 s) {
    print_c(s.x); print_s((char *)", ");
    print_s2(s.s); print_s((char *)", ");
    print_c(s.y);
}

struct s4 {
    struct s1 array[4];
    char val;
};

void print_s4(struct s4 s) {
    print_s((char *)"Array: [");
    print_s1(s.array[0]); print_s((char *)", ");
    print_s1(s.array[1]); print_s((char *)", ");
    print_s1(s.array[2]); print_s((char *)", ");
    print_s1(s.array[3]);
    print_s((char *)"], val: ");
    print_c(s.val);
}

struct s4 create_s4(struct s1 s1_1, struct s1 s1_2, struct s1 s1_3, struct s1 s1_4, char val) {
    struct s4 s4;

    print_s1(s1_1);
    print_c('\n');
    print_s1(s1_2);
    print_c('\n');
    print_s1(s1_3);
    print_c('\n');
    print_s1(s1_4);
    print_c('\n');

    s4.array[0] = s1_1;
    s4.array[1] = s1_2;
    s4.array[2] = s1_3;
    s4.array[3] = s1_4;
    s4.val = val;

    print_s((char *)"Inside create_s4: \n");
    print_s4(s4);
    print_c('\n');


    return s4;
}

void testing(struct s1 s1_1, struct s1 s1_2, struct s1 s1_3, struct s1 s1_4, char val) {
        print_s1(s1_1);
        print_c('\n');
        print_s1(s1_2);
        print_c('\n');
        print_s1(s1_3);
        print_c('\n');
        print_s1(s1_4);
        print_c('\n');
}

struct s5 {
    char c1;
    char c2;
    char c3;
    char c4;
    char c5;
};

struct s5 create_s5(char c1, char c2, char c3, char c4, char c5) {
    struct s5 s5;
    s5.c1 = c1;
    s5.c2 = c2;
    s5.c3 = c3;
    s5.c4 = c4;
    s5.c5 = c5;
    return s5;
}

void print_s5(struct s5 s) {
    print_c(s.c1); print_s((char *)", ");
    print_c(s.c2); print_s((char *)", ");
    print_c(s.c3); print_s((char *)", ");
    print_c(s.c4); print_s((char *)", ");
    print_c(s.c5);
}

void main() {
    struct s1 s1;
    struct s2 s2;
    struct s3 s3;
    struct s4 s4;
    struct s5 s5;

    struct s1 s1_1;
    struct s1 s1_2;
    struct s1 s1_3;
    struct s1 s1_4;

    s1 = create_s1('a', 'b');
    print_s1(s1);
    print_c('\n');

    s5 = create_s5('f', 'd', 'c', 'b', 'a');
    print_s5(s5);
    print_c('\n');

    s2 = create_s2(4, 8, 16);
    print_s2(s2);
    print_c('\n');

    s3 = create_s3('x', s2, 'y');
    print_s3(s3);
    print_c('\n');

    s1_1 = create_s1('a', 'b');
    s1_2 = create_s1('c', 'd');
    s1_3 = create_s1('e', 'f');
    s1_4 = create_s1('g', 'h');

    s4 = create_s4(s1_1, s1_2, s1_3, s1_4, 'z');

/*
    s4.array[0] = s1_1;
    s4.array[1] = s1_2;
    s4.array[2] = s1_3;
    s4.array[3] = s1_4;
    s4.val = 'z';
*/
    //testing(s1_1, s1_2, s1_3, s1_4, 'z');

    print_s4(s4);
    print_c('\n');

}