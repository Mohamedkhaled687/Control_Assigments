pkg load control
pkg load symbolic
syms t s a
g = t^2 * exp(-a*t);
F = laplace(g, t, s);
disp('Laplace Transform of f(t) = t^2 * exp(-a*t) is:');
pretty(F)

