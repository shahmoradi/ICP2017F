function getFac(n)
    nOrg = n;
    fac = n;
    while n > 1
        n = n-1;
        fac = fac*n;
    end
    disp([num2str(nOrg),'! = ' num2str(fac)])
end