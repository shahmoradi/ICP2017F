function fac = getFacWhile(n)
    fac = n;
    while n > 1
        n = n-1;
        fac = fac*n;
    end
end