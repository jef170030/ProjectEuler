function [x, y, z, p] = p_triplet(a, b, c)
    % p_triplet: computes the product abc of the pythagorean triplet (a, b, c)
    %     Signature: p = p_triplet(a, b, c)
    %     Input a: a natural
    %     Input b: a natural
    %     Input c: a natural, satisfying a^2 + b^2 = c^2
    %     Output p: the product abc
    
    assert(a < b && b < c, 'correct ordering of elements', 'a must be less than b, which must be less than c')
    
    p =a*b*c;
end
