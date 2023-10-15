#ifndef MATRIX_HPP
#define MATRIX_HPP

#include <vector>

std::vector<std::vector<int>> matrixMultiplication(const std::vector<std::vector<int>> &a, const std::vector<std::vector<int>> &b);
std::vector<std::vector<int>> matrixMultiplicationOpenMP(const std::vector<std::vector<int>> &a, const std::vector<std::vector<int>> &b);
void displayMatrix(const std::vector<std::vector<int>> &matrix);

#endif
