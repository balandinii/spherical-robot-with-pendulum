function ans = equation_28_29( c, e_c, a, b, gamma_k )

if(sp(e_c,e_c) < 1.0e-140)
    ans=-c/b;
else
x= (sp(c,e_c) / sp(e_c,e_c)) / (a*sp(e_c,e_c) - b);
ks=vp(gamma_k, e_c);
ks=ks./sqrt(sp(ks,ks));
y=-sp(c, ks)/b;
ans=x*e_c+y*ks;
end
end