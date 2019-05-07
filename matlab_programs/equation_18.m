function ans = equation_18( e_l, psi_l, e_c, psi_c, p, phi_c, J, mu )

v=(psi_c + p*e_l*phi_c)/(J+mu);
ans=e_l*psi_l-sp(e_c,v);
end