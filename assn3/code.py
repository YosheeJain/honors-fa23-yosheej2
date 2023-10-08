import random
import numpy as np
import timeit

def multiply_matrices(matrix1, matrix2):
    rows1, cols1 = len(matrix1), len(matrix1[0])
    rows2, cols2 = len(matrix2), len(matrix2[0])

    if cols1 != rows2:
        raise ValueError("Number of columns in the first matrix must be equal to the number of rows in the second matrix.")

    result = [[0 for _ in range(cols2)] for _ in range(rows1)]

    for i in range(rows1):
        for j in range(cols2):
            for k in range(cols1):
                result[i][j] += matrix1[i][k] * matrix2[k][j]

    return result

# Generate random matrices for testing
matrix_size = 100
matrix1 = [[random.randint(1, 10) for _ in range(matrix_size)] for _ in range(matrix_size)]
matrix2 = [[random.randint(1, 10) for _ in range(matrix_size)] for _ in range(matrix_size)]

# Profile the matrix multiplication
def profile_matrix_multiplication():
    multiply_matrices(matrix1, matrix2)

execution_time = timeit.timeit(profile_matrix_multiplication, number=1)
print("Matrix Multiplication Execution Time:", execution_time, "seconds")
