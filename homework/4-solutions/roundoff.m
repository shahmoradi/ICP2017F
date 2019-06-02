formatSpec = 'With %d sqrt, then %d times ^2 operations, the number %.16f becomes: %.16f \n'; % the string format for fprintf function
for n = 1:60
    r_original = 2.0;
    r = r_original;
    for i = 1:n
        r = sqrt(r);
    end
    for i = 1:n
        r = r^2;
    end
    fprintf(formatSpec,n,n,r_original,r);
end