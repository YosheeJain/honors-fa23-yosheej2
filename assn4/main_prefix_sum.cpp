
#include <iostream>
#include <random>
#include "prefix_sum.hpp"

int main(int argc, char **argv) {
    if(argc != 2) {
        std::cout << "Usage: " << argv[0] << " <array_size>" << std::endl;
        return 1;
    }
    int array_size = std::atoi(argv[1]);

    // Create an array filled with random integers
    std::vector<int> input(array_size, 0);

    std::random_device rd;  // seed source for the random number engine
    std::mt19937 gen(rd()); // mersenne_twister_engine seeded with rd()
    std::uniform_int_distribution<> randint(1, 100);

    // Fill the array with random numbers
    for(int i = 0; i < array_size; ++i) {
        input[i] = randint(gen);
    }

    std::vector<int> output;

    // Perform prefix sum without OpenMP
    std::cout << "Prefix sum without OpenMP:" << std::endl;
    prefixSum(input, output);
    // for (int num : result) {
    //     std::cout << num << " ";
    // }
    // std::cout << std::endl;

    // Perform prefix sum using OpenMP
    // std::cout << "\nPrefix sum using OpenMP:" << std::endl;
    // prefixSumOpenMP(input, output);
    // for (int num : resultOpenMP) {
    //     std::cout << num << " ";
    // }
    // std::cout << std::endl;

    return 0;
}
