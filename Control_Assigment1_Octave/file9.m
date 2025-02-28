pkg load symbolic
syms t s
F = 2*(s+1)/(s^2 + 2*s +2)^2;
G = laplace(F,t,s);
pretty(G);
