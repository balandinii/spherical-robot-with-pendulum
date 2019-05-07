function ans = equation_19( p, e_l, phi_c, alpha, psi_c )

v1=p*e_l*phi_c;
v2=(alpha/(alpha-1)) * (psi_c + p*e_l*phi_c);

ans=v1-v2;

end