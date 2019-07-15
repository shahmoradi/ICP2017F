N = 1:35;
Nlen = length(N);

% preallocation of structures helps MATLAB in terms of both
% 1. not fragmenting memory and
% 2. not spending time looking for a large enough memory slot:
% you can preallocate the structure array by starting the loop
% in the reverse direction!

if exist('fibOutput.txt','file') && exist('fibLoopOutput.txt','file')
    warning('The requested files already exist in the working direcgtory of MATLAB')
else
    for i = Nlen:-1:1
        disp(['getting Fib(',num2str(N(i)),')']);
        fibOutput(i) = timeFib(N(i));
        fibLoopOutput(i) = timeFibLoop(N(i));
    end
    writetable(struct2table(fibOutput), 'fibOutput.txt')
    writetable(struct2table(fibLoopOutput), 'fibLoopOutput.txt')
end