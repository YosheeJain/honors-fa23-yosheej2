#include "vector.h"
#include <iostream>

void List::insert(int number) {

    // list_.insert(std::upper_bound( list_.begin(), list_.end(), number), number);
    auto it = list_.begin();
    while (it != list_.end() && (*it < number)) {
        ++it;
    }
    list_.insert(it,number);
}

void List::remove(int index) {
    auto it = list_.begin();

    it += index;
    // while(index-- > 0) {
    //     ++it;
    // }

    list_.erase(it);
}

void List::print() {

    for( int num : list_) {
        std::cout << num << " ";
    }
    std::cout << std::endl;
}

void List::swap() {
    auto it1 = list_.begin();
    auto it2 = std::next(it1);

    while (it1 != list_.end() && it2 != list_.end()) {
        std::iter_swap(it1, it2);

        std::advance(it1, 2);
        std::advance(it2, 2);
    }
}