function ans = equation_17( psi_c, p, e_l, phi_c, beta, t_omega_c, J, mu, e_c )

hisl=psi_c + p*e_l*phi_c + e_c*sp(e_c, t_omega_c) - (beta - e_l*e_l)*t_omega_c;
zn=(J+mu)*p*e_l;
ans=hisl/zn;

end