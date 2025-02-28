pkg load symbolic
syms t s
F = s / (2*s^2 - 8);
G = ilaplace(F,t,s);
pretty(G);

