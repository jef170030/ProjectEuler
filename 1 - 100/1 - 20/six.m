% Problem 6: The sum of the squares of the first ten natural numbers is
% 1^2 + 2^2 + ... + 10^2 = 385 The square of the sum of the first ten natural numbers is
% (1 + 2 + ... + 10)^2 = 55^2 = 3025. Hence the difference between the sum of the squares 
% of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
% Find the difference between the sum of the squares of the first one hundred natural numbers 
% and the square of the sum.

tic

A = 1 : 100; % By Matlab convention, this creates a vector. By design, its elements 
             % are the naturals from 1 to 100, inclusive.
             
answer = (sum(A)^2) - sum(A.*A);
disp(answer)

toc