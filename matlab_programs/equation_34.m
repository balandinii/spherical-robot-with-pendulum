function ans = equation_34( phi_c_str, psi_l_str, e_c, j )

ans=phi_c_str - psi_l_str*e_c / (j+sp(e_c,e_c));

end