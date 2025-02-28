pkg load symbolic
syms s t a positive
F_s = log10(1 + (a^2/s^2));
f_t = ilaplace(F_s, s, t);
pretty(f_t)
