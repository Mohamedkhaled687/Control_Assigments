pkg load control
pkg load symbolic
syms s t
F_s = (3*s - 4)/(s^2 - 8*s + 65);
f_t = ilaplace(F_s, s, t);
pretty(f_t);
