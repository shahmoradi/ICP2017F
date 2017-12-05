load('Drand.mat');
global data nsample
data = Drand;
mu = 1;
sigma = 10;
Param = [mu,sigma];
nsample = length(data);
getTotalLogProb(Param)
fminsearch(@getTotalLogProb,Param)