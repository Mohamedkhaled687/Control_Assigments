
% Define symbolic variables
syms s t

% Define F(s)
F_s = s/(2 * s^2 - 8);

% Compute the inverse Laplace transform
f_t = ilaplace(F_s, s, t);

% Display the result
disp('Inverse Laplace of s/(2 * s^2 - 8):');
pretty(f_t);

