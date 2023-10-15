#include <iostream>
#include <random>
#include "matrix.hpp"

int main(int argc, char **argv) {
    if(argc != 2) {
        std::cout << "Usage: " << argv[0] << " <matrix_size>" << std::endl;
        return 1;
    }
    int matrix_size = std::atoi(argv[1]);

    // Create two matrices filled with random integers
    std::vector<std::vector<int>> matrixA(matrix_size, std::vector<int>(matrix_size, 0));
    std::vector<std::vector<int>> matrixB(matrix_size, std::vector<int>(matrix_size, 0));

    std::random_device rd;  // seed source for the random number engine
    std::mt19937 gen(rd()); // mersenne_twister_engine seeded with rd()
    std::uniform_int_distribution<> randint(1, 100);

    // Fill the matrices with random numbers
    for(int i = 0; i < matrix_size; ++i) {
        for(int j = 0; j < matrix_size; ++j) {
            matrixA[i][j] = randint(gen);
            matrixB[i][j] = randint(gen);
        }
    }

    // Perform matrix multiplication without OpenMP
    // std::cout << "Matrix multiplication without OpenMP:" << std::endl;
    // auto result = matrixMultiplication(matrixA, matrixB);
    // displayMatrix(result);

    // Perform matrix multiplication using OpenMP
    std::cout << "\nMatrix multiplication using OpenMP:" << std::endl;
    auto resultOpenMP = matrixMultiplicationOpenMP(matrixA, matrixB);
    // displayMatrix(resultOpenMP);

    return 0;
}
