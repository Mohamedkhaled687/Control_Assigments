% Define symbolic variables
syms t s

% Define the function f(t)
f = exp(4*t) * (sin(3*t)^3 + cosh(3*t)^3);

% Compute the Laplace Transform
F = laplace(f, t, s);

% Display the result
disp('Laplace Transform of f(t) = e^(4t) * (sin^3(3t) + cosh^3(3t)) is:');
pretty(F);


