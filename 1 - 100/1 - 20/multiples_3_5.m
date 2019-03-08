% Problem 1: If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
% The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

m = 3 : 3 : 999;
n = 5 : 5 : 999;

allmultiples = [m, n]; % New vector that contains all multiples of 3 and 5 less than 1000
answer = sum(unique(allmultiples)); % Sum of the distinct elements of the vector "allmultiples". So if an element shows up twice in this new vector, it will only be added once to avoid double counting.

disp(answer);