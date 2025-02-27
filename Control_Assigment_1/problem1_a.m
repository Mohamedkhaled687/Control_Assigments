% Define symbolic variables t (time), s (Laplace domain variable), and a (constant)
syms t s a  

% Define the given function f(t) = t^2 * exp(-a*t)
f = t^2 * exp(-a*t);  

% Compute the Laplace Transform of f(t) with respect to t and express it in terms of s
F = laplace(f, t, s);  

% Display the result in a better format
disp('Laplace Transform of f(t) = t^2 * exp(-a*t) is:');
pretty(F);  % Displays the result in a more readable mathematical form


