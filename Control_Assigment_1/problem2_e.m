% Using MATLAB's symbolic toolbox to find inverse Laplace transform
syms s t a positive
F_s = log10(1 + (a^2/s^2));

% Calculate the inverse Laplace transform
f_t = ilaplace(F_s, s, t);

% Display the result in a nicely formatted equation
disp('The inverse Laplace transform is:')
pretty(f_t)