pkg load symbolic
syms t s
F_s = atan(1/s);

% Compute the inverse Laplace transform
f_t = ilaplace(F_s, s, t);

% Display the result

pretty(f_t)
