pkg load symbolic
syms s
num = 2*s^3 + 5*s^2 + 3*s + 6;
den = s^3 + 6*s^2 + 11*s + 6;
F = num/den;
G = partfrac(F);
pretty(G);
