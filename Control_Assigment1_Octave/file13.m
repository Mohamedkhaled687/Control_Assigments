pkg load symbolic
syms s
num = s^2 + 2*s + 3;
den = s^3 + 3*s^2 + 3*s + 1;
F_s = num / den;
F_part = partfrac(F_s);
pretty(F_part);

