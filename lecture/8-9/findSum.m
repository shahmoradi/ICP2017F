function result = findSum(inputvalue)
    persistent summ
    if isempty(summ)
    summ = 0;
    end
    summ = summ + inputvalue;
    result = summ;
    stepSize
end