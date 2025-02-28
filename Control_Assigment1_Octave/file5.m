pkg load control
pkg load symbolic
syms t s
G = (exp(4*t) * sin(3*t)^3) + (exp(4*t) * cosh(3*t)^3);
F = laplace(G,t,s);
F

