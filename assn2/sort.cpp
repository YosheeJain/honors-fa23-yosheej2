#include <iostream>
#include <cstdlib>
#include <ctime>
#include <vector>
#include <algorithm>

int main(int argc, char **argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <number_of_elements>" << std::endl;
        return 1;
    }

    int number = atoi(argv[1]);
    std::vector<int> a;

    for (int i = 0; i < number; i++) {
        a.push_back(rand() % 900000000 + 100000000);
    }

    std::sort(a.begin(), a.end());

    return 0;
}
