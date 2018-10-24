#include <iostream>

int pos = 1;

void trySwap(int posA, int posB) {
    if (pos == posA || pos == posB) {
        pos = pos == posA ? posB : posA;
    }
}

int main() {
    std::string moves;
    std::cin >> moves;

    for (auto move : moves) {
        switch(move) {
            case 'A':
                trySwap(1, 2);
                break;
            case 'B':
                trySwap(2, 3);
                break;
            default:
                trySwap(1, 3);
                break;
        }
    }
    std::cout << pos;
}