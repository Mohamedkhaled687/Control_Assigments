% Define symbolic variables
syms s t

% Define F(s)
F_s = (3*s - 4)/(s^2 - 8*s + 65);

% Compute the inverse Laplace transform
f_t = ilaplace(F_s, s, t);

% Display the result
disp('Inverse Laplace of (3s - 4)/(s^2 - 8s + 65):');
pretty(f_t);