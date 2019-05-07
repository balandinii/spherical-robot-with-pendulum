function ans = equation_9( q, p, gamma, gamma_k, omega, e, mu )

tmp1=sp(omega, e)*vp(gamma_k,omega)-sp(omega, omega)*vp(gamma_k, e);
tmp2=(mu+1)*vp(gamma, gamma_k);
y=-q + (1/p)*tmp1 + (1/p)*tmp2;
ans=y;

end

