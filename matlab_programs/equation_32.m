function ans = equation_32( J, mu, e_l, e_c, j )

h1=1;
h2=1/(J+mu);
h3=(e_l*e_l + j/(J+mu)) / (sp(e_c,e_c)+j);
ans=h1+h2+h3;

end