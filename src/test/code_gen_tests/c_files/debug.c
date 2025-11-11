struct s2 {
    int x;
    int y;
};

struct s1 {
  int c1;
  struct s2 s;
  char c2;
};


struct s1 create_s1(int c1, struct s2 s, char c2);
struct s2 create_s2(int x, int y);
void print_s1(struct s1 s1);
void print_s2(struct s2 s2);


struct s1 create_s1(int c1, struct s2 s, char c2) {
    struct s1 s1;
    s1.c1 = c1;
    s1.s = s;
    s1.c2 = c2;
    return s1;
}

struct s2 create_s2(int x, int y) {
    struct s2 s2;
    s2.x = x;
    s2.y = y;
    return s2;
}

void print_s1(struct s1 s1) {
    print_i(s1.c1); print_s((char *)", ");
    print_s2(s1.s); print_s((char *)", ");
    print_c(s1.c2);
}

void print_s2(struct s2 s2) {
    print_i(s2.x); print_s((char *)", ");
    print_i(s2.y);
}

void main() {
    struct s1 s1;
    struct s2 s2;

    s2 = create_s2(100, 200);
    print_s2(s2);
    print_c('\n');

    s1 = create_s1(500, s2, 'b');
    print_s1(s1);
}