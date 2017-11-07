function output = getFac(n)
    if n > 0
        output = 1;
        while n > 0
            output = output * n;
            n = n - 1;
        end
        %for i = n:-1:1
        %    output = output * i;
        %end
    else
        disp('wrong input!')
    end
end