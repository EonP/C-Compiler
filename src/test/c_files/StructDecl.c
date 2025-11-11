int main() {
    int x;
    x = 0;
    while (x < 10) {  // While should contain condition `x < 10`
        x = x + 1;    // Ensure this is inside a Block node
    }
    return x;
}

