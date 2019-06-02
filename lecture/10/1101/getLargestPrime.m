function getLargestPrime(n)
    for i = n:-1:2
        if isprime(i), disp(i), continue, end
    end
end