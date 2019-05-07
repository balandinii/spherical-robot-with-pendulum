function ans = equation_33( e_l, J, mu, e_c, j  )

hisl=(J+mu+1) * (j+sp(e_c,e_c));
zn=J+mu;
ans= e_l*e_l + hisl/zn;

end