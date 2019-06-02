% istart = -2;
% iend = 10;
% stepSize = 3;
for index = istart:stepSize:iend
    disp(index);
end
disp( [ 'number of iterations: ', num2str( fix((iend-istart)/stepSize+1) ) ] );