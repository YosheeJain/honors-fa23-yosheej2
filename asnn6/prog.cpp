#include <iostream>
#include <fstream>

#include <iostream>
#include <cstdlib>
#include <vector>

int factorial(int fact) {
  if (fact < 0 || fact > 12) {
    std::cout << "Please enter a number between 0 and 12 (inclusive)." << std::endl;
    exit(1);
  }

  if(fact == 0) {
    return 1;
  } else {
    return fact * factorial(fact-1);
  }
}