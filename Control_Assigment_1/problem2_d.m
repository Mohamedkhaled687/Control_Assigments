
% Define symbolic variables
syms s t

% Define F(s)
F_s = atan(1/s);

% Compute the inverse Laplace transform
f_t = ilaplace(F_s, s, t);

% Display the result
disp('Inverse Laplace of tan^-1(1/s):');
pretty(f_t)
