pkg load control
pkg load symbolic
syms t s w
G = sin(w*t) * cos(w*t);
F = laplace(G, t,s);
disp('Laplace Transform of f(t) = sin(wt) * cos(wt) is:');
pretty(F);

