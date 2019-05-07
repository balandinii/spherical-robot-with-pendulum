function ans = equation_36(psi_c, e_c, beta)

summand = sp(e_c, psi_c) / (beta - 1) * e_c;
ans = (psi_c + summand) / beta;

end

