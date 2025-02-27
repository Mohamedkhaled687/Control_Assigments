% Define symbolic variables
syms t s

% Define the function f(t)
f = exp(-2*t) * sin(4*t) * cos(6*t);

% Compute the Laplace Transform
F = laplace(f, t, s);

% Display the result
disp('Laplace Transform of f(t) = e^(-2t) * sin(4t) * cos(6t) is:');
pretty(F);

