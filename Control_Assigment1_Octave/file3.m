pkg load control
pkg load symbolic
syms t s
G = exp(3*t) * sin(4*t)^2;
F = laplace (G, t, s);
F
