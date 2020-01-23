% Problem 10: The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17. Find the sum of all the primes below two million.

tic
sum(primes(2e6)) % "primes" gives a vector of all primes less than or equal to the input
toc