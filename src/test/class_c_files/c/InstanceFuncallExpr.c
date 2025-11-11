class A {
    int x;

    int get() {
        return 1;
    }
}

class B extends A {
    int y;

    int foo() {
        get();
        return 3;
    }

}

int main() {
    class A a;
    class B b;
    class A typecast;

    a.get();
    a.x;

    b.get();
    b.foo();
    b.x;
    b.y;

    typecast = (class A) b;
    typecast.get();
    typecast.x;
    typecast.y; // should fail
    typecast.foo(); // should fail
    return 0;
}
