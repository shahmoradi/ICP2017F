function isPrime(n)
    function check = checkPrime(n,current)
        if current == 1
            check = true;
        elseif mod(n, current) == 0
            check = false;
        else
            check = checkPrime(n, current-1);
        end
    end
    
    res = checkPrime(n, n-1);
    if res == 1
        fprintf('%d is Prime!\n',n);
    else
        fprintf('%d is not Prime.\n',n);
    end
end