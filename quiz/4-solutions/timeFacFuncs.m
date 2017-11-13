n = 1700000;
disp( [ 'average runtime for getFacWhile(', num2str(n) , '): ', num2str(timeit(@()getFacWhile(n))) , ' seconds' ] );
disp( [ 'average runtime for getFacFor(', num2str(n) , '): ', num2str(timeit(@()getFacFor(n))) , ' seconds' ] );
disp( [ 'average runtime for getFacVec(', num2str(n) , '): ', num2str(timeit(@()getFacVec(n))) , ' seconds' ] );