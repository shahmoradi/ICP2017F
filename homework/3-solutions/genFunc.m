function h = genFunc(varargin)
    a = 0; b = 0; c = 0;
    if nargin == 0
        h = 0;
    elseif nargin <= 3
        [a,b,c] = varargin{1:nargin};
    else
        disp('Too many arguments!');
        return;
    end
    
    h = @evalFunc;
    
    function y = evalFunc(x)
        y = a*x.^2 + b*x + c;
    end
end