#include <cstdint>
#include <iostream>
#include <string>
#include <vector>

#include <stdio.h>

namespace harmonic {

using Int = int_fast64_t;

enum class Units : Int {
    shannon = 1,
    subotnik = 0x80 * shannon,
    schuman = 0x80 * subotnik,
    shepard = 0x80 * schuman,
    stockhausen = 0x80 * shepard,
};

static const auto RANGE = Int(Units::stockhausen) / Int(Units::subotnik);

// See https://stackoverflow.com/questions/554063/
// how-do-i-print-a-double-value-with-full-precision-using-cout
// #comment29144568_554134
static const auto PRECISION = std::numeric_limits<double>::digits10 + 2;


Int gcd(Int a, Int b) {
    return b == 0 ? a : gcd(b, a % b);
}

void printSums(Int max = RANGE) {
    std::cout << max << "\n";

    std::vector<Int> primes;

    auto is_prime = [&](Int x) {
        for (auto p : primes) {
            if (not (x % p))
                return false;
        }
        primes.push_back(x);
        return true;
    };

    double sum = 0;

    std::cout.precision(PRECISION);
    for (Int i = 2; i <= max; ++i) {
        if (is_prime(i)) {
            sum = sum +  1.0 / i;
            std::cout << "[" <<  i << ", " << std::fixed << sum << "]\n";
        }
    }
}

Int toRange(int argc, char* argv[]) {
    return (argc <= 1) ? RANGE : std::stol(argv[1]);
}

}  // harmonic

int main(int argc, char* argv[]) {
    harmonic::printSums(harmonic::toRange(argc, argv));
    return 0;
}
