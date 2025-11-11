void print_int_array(int array[3]) {
    print_i(array[0]); print_s((char *)", ");
    print_i(array[1]); print_s((char *)", ");
    print_i(array[2]);
}

void modify_array(int array[3]) {
    array[0] = 100;
    array[1] = 200;
    array[2] = 300;
}

void main() {
    int array[3];
    array[0] = 10;
    array[1] = 20;
    array[2] = 10;

    print_int_array(array);
    print_c('\n');

    modify_array(array);

    print_int_array(array);
    print_c('\n');
}