function outputHandle = getHandle(n)
    %outputHandle = @(n,sqrt_n,divisor) isDivisible(n,sqrt_n,divisor);
    outputHandle = @sin;
    
    function output = isDivisible(n,sqrt_n,divisor)
        if mod(n,divisor) == 0
            output = false;
        elseif sqrt_n<divisor
            output = true;
            return
        else
            divisor = divisor + 1;
            output = isDivisible(n,sqrt_n,divisor);
        end
    end

end