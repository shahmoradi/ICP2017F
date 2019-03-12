%a = [1,0,2,3,7,-1];
%a = [1, 2, 3; 4, 5, 6; 7, 8, 9];
a = {1, 2, 3; 4, 5, 6; 7, 8, 9};
a = reshape(a,[1,9]);
for index = a
    disp(class(index))
    disp(index)
end