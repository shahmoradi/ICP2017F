n = 5e7;
X = randn(n,1);
LogicalX = zeros(size(X));
tic
for i=1:n
    if X(i)>0
        LogicalX(i) = 1;
    end
end
toc