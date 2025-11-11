void main() {
    int x;
    x = -1;
    while (1) {
        x = x + 1;
        if (x % 2 != 0)
            continue;
        print_i(x);
        if (x != 20)
            print_s((char *) ", ");
        else
            break;
        x = x + 1;
    }
}