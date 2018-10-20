#include <iostream>

int main() {
    int s;
    std::cin >> s;
    bool result = s % 2 == 0; 
    std::cout << result ? "Bob" : "Alice";
}