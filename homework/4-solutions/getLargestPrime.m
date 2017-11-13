function integer = getLargestPrime(upper)
    if (upper<1)
        disp('input value cannot be less than 1. Goodbye!')
        return
    end
    for integer = upper:-1:1
        if isprime(integer)
            break
        end
    end
end