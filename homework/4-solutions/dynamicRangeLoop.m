Num = num2cell([1:10]);
for i = 1:length(Num)
    i = fix(length(Num)/2);
    Num(i) = [];
    disp(Num);
end