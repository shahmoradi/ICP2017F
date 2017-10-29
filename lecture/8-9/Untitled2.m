a = input('Enter a number:');
if isnumeric(a) && (a >= 0)
    root = sqrt(a);
    disp(['Square root(',num2str(a),') = ', num2str(root)]);
elseif isnumeric(a) && (a < 0)
    disp(['The input number is negative, there is no square root.']);
else
    disp(['Please enter a real number!']);
end