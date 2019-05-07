function ans = equation_20( psi_l_str, e_l, beta, alpha, e_c, t_omega_c )

hisl=psi_l_str + (e_l*e_l - (1-beta)/(alpha-1))*sp(e_c,t_omega_c);
zn=e_l*(beta-e_l*e_l);
ans=hisl/zn;

end