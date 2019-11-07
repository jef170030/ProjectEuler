% Problem 5: 2520 is the smallest number that can be divided by each of the numbers from 1 to 10
% without any remainder. What is the smallest positive number that is evenly divisible
% by all of the numbers from 1 to 20?

tic

L = factorial(20)/factorial(10); % This number is divisible by all numbers from 1 to 20 and
                                 % is an upper bound for the answer.

for i = 20 : 20 : L  % i is an incrementing multiple of 20.
    for j = 19 : -1 : 1
        
        if mod(i, j) ~= 0
            break 
            % "break" terminates the execution of a for or while loop. So if
            % we get to a case where mod(i, j) ~= 0 (ie - j doesn't divide i), 
            % then we leave the inner for loop and test if 
            % that number i is the answer. 
        end
    end % if mod(i, j) == 0, then we will iterate in the inner loop, 
        % checking if the next least natural divides i. This is the end of
        % the inner for loop.
    
    if j == 1 % Seeing if 1 was the last number to divide i.
        answer = i; 
        % If we get to this line that means that mod(i, j) == 0 for all 
        % j from [19, ... , 2, 1]. That is, we've passed through all 
        % the numbers our answer has to be divisible by and found 
        % the smallest positive number that's evenly divisible by all 
        % of the numbers from 1 to 20. Note: it will be the smallest since we
        % are staring with (and incrementing by multiples of) 20.
        
        break 
        % This will break us out of the entire loop once we have found the 
        % correct answer. Note: this is the ONLY WAY out of the entire loop.
    end
    
end % If we get down here then we will iterate the entire loop again, but now with
    % the next multiple of 20.
    
disp(answer)

toc