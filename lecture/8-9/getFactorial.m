function result=getFactorial(x)
    if (x<=0)
        result=1;
    else
        result=x*getFactorial(x-1);
    end
end