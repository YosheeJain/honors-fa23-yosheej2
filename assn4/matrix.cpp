
#include "matrix.hpp"
#include <iostream>
#ifdef _OPENMP
#include <omp.h>

#endif

std::vector<std::vector<int>> matrixMultiplication(const std::vector<std::vector<int>> &a, const std::vector<std::vector<int>> &b) {
    int n = a.size();
    int m = b[0].size();
    int p = b.size();
    std::vector<std::vector<int>> result(n, std::vector<int>(m, 0));

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            for (int k = 0; k < p; k++) {
                result[i][j] += a[i][k] * b[k][j];
            }
        }
    }

    return result;
}

std::vector<std::vector<int>> matrixMultiplicationOpenMP(const std::vector<std::vector<int>> &a, const std::vector<std::vector<int>> &b) {
    int n = a.size();
    int m = b[0].size();
    int p = b.size();
    std::vector<std::vector<int>> result(n, std::vector<int>(m, 0));

    #pragma omp parallel for
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            for (int k = 0; k < p; k++) {
                result[i][j] += a[i][k] * b[k][j];
            }
        }
    }

    return result;
}

void displayMatrix(const std::vector<std::vector<int>> &matrix) {
    for (const auto &row : matrix) {
        for (int col : row) {
            std::cout << col << " ";
        }
        std::cout << std::endl;
    }
}
