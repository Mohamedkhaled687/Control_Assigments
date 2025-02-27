
% Define symbolic variables
syms s t

% Define F(s)
F_s = 2*(s + 1) / ( (s^2 + 2*s + 2)^2 );

% Compute the inverse Laplace transform
f_t = ilaplace(F_s, s, t);

% Display the result
disp('Inverse Laplace of 2(s+1)/((s^2 + 2s + 2)^2):');
pretty(f_t);

