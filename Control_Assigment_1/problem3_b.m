% Define the symbolic variable
syms s

% Define the numerator and denominator
num = s^2 + 2*s + 3;
den = s^3 + 3*s^2 + 3*s + 1;

% Define F(s)
F_s = num / den;

% Compute the partial fraction expansion
F_part = partfrac(F_s);

% Display the result
disp('Partial fraction expansion of (s^2 + 2s + 3)/(s^3 + 3s^2 + 3s + 1):');
pretty(F_part);