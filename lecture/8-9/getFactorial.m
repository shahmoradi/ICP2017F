function result=getFactorial(x)
    if (x<=0)
        disp('one!')
        result=1;
    else
        disp('before!')
        result=x*getFactorial(x-1);
        disp('after!')
    end
end