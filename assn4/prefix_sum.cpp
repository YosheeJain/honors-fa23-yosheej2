#include "prefix_sum.hpp"
#include <iostream>
#ifdef _OPENMP
#include <omp.h>

#endif

void prefixSum(const std::vector<int>& input, std::vector<int>& output) {
    int n = input.size();
    if (n == 0) {
        return;
    }

    output.resize(n);
    output[0] = input[0];

    for (int i = 1; i < n; i++) {
        output[i] = output[i - 1] + input[i];
    }
}


void prefixSumOpenMP(const std::vector<int>& input, std::vector<int>& output) {
    int n = input.size();
    if (n == 0) {
        return;
    }

    output.resize(n);
    output[0] = input[0];

    #pragma omp parallel for
    for (int i = 1; i < n; i++) {
        output[i] = output[i - 1] + input[i];
    }
}
