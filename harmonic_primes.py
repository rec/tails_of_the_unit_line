#!/usr/bin/env python3

import fractions, itertools

primes = []
total = 0
FORMAT = '{count:4d}: {i:6d} -> {total:7.5f}'

for i in itertools.count(2):
    if all(i % p for p in primes):
        primes.append(i)
        total += fractions.Fraction(1, i)
        count = len(primes)
        print(FORMAT.format(count=count, total=float(total), i=i))
