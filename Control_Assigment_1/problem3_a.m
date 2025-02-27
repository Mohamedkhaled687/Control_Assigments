% Define the symbolic variable
syms s

% Define the numerator and denominator
num = 2*s^3 + 5*s^2 + 3*s + 6;
den = s^3 + 6*s^2 + 11*s + 6;

% Define F(s)
F_s = num / den;

% Compute the partial fraction expansion
F_part = partfrac(F_s);

% Display the result
disp('Partial fraction expansion of (2s^3 + 5s^2 + 3s + 6)/(s^3 + 6s^2 + 11s + 6):');
pretty(F_part);