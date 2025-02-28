pkg load control
pkg load symbolic
syms t s
G = exp(-2*t) * sin(4*t) * cos(6*t);
F = laplace(G, t ,s);
pretty(F);

