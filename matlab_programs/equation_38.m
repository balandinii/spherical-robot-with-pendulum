function ans = equation_38(alpha, psi_l, p, e_c, phi_c, beta)

num = alpha*psi_l - p*sp(e_c, phi_c);
div = alpha*beta - 1;
ans = num/div;

end