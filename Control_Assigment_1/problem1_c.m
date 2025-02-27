
% Define symbolic variables
syms t s

% Define the function f(t)
f = exp(3*t) * sin(4*t)^2;

% Compute the Laplace Transform
F = laplace(f, t, s);

% Display the result
disp('Laplace Transform of f(t) = e^(3t) * sin^2(4t) is:');
pretty(F);
