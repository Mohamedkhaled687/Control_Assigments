% Define symbolic variables
syms t s w  

% Define the function f(t) = sin(wt) * cos(wt)
f = sin(w*t) * cos(w*t);  

% Compute the Laplace Transform of f(t)
F = laplace(f, t, s);  

% Display the result in a readable format
disp('Laplace Transform of f(t) = sin(wt) * cos(wt) is:');
pretty(F);  % Display result in better format