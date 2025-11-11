char global[3];

void main() {
    char array[2][3];
    char a1[3];
    char a2[3];

    array[0][0] = '1';
    array[0][1] = '2';
    array[0][2] = 'x';
    array[1][0] = '3';
    array[1][1] = '4';

    global[0] = 'g';
    global[2] = 'l';

    print_c(array[0][2]);
    print_c('\n');
    print_c(global[2]);
    print_c('\n');

    a1[0] = '0';
    a1[1] = '1';
    a1[2] = '2';

    a2[0] = 'a';
    a2[1] = 'b';
    a2[2] = 'c';

    a1[1] = a2[1];

    print_s((char *) a1);
    print_c('\n');




}