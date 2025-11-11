struct S1 {
  char c1;
  char c2;
  int a;
  char c3;
};

struct S2 {
  char c1;
  char c2;
  char c3;
};

struct S3 {
  char c1;
  struct S1 s;
  char c2;
};

struct S4 {
  char c1;
  struct S2 s;
  char c2;
};
