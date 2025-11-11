struct x_s {
    struct x_s * s[2][3][3]; // recursive reference without a pointer is invalid
};
