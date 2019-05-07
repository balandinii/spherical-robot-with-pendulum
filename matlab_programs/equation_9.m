function ans = equation_9( q, p, gamma, omega, e )

sc=sp(omega, e)*vp(gamma,omega)-sp(omega, omega)*vp(gamma,e);
y=-q + (1/p)*sc;
ans=y;

end

