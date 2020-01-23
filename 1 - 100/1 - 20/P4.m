% Problem 4: A palindromic number reads the same both ways.
% The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
% Find the largest palindrome made from the product of two 3-digit numbers.

tic
newpalindrome = 0;

for i = 999 : -1 : 100
    for j = 999 : -1 : 100
        answer = i*j;
        
        str = num2str(answer); % str is the string of characters that are the digits of answer.
        
        if all(str == str(end : -1 : 1)) == 1 && answer > newpalindrome
            % This part establishes the palindromes. 
            % The "all" portion of the above condition checks if all
            % elements of the string are the same as their mirrored
            % representation (if they are, then that means the number is a palindrome). 
            % Lastly, the "end" in the string means starting at the last character in
            % the string, for however many characters are present.
            
            newpalindrome = answer; % Overwriting the previous largest palindrome
        end
        
        if answer < newpalindrome
            break
            % For a fixed i, as j decrements we have the following:
            % If the product i*j is lower than the current highest
            % palindrome found so far, then don't consider the product of
            % that i with any lesser j (as their product will also be less
            % that the current  highest palindrome). Hence we break out of
            % the innermost loop and begin iteration again with the next
            % least i.
        end
    end
end

% Most of the code is just checking if a product i*j is a palindrome larger
% than the current largest one. If it's not, then don't do anything with it
% and keep iterating.

disp(newpalindrome)
toc