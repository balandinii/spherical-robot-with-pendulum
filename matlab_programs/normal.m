function [ gamma_k ] = normal( xi )

A = 1;
b = 100;
vec = [-2*A*xi(1)/b/b; 0; -1];

gamma_k = vec/sqrt(sp(vec, vec));

end

