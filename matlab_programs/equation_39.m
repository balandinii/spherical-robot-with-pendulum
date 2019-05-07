function ans = equation_39(phi_c, p, alpha, psi_l, e_c, beta)

subtrahend = (1/p) * (alpha*psi_l-p*sp(e_c,phi_c)) / (alpha*beta-1) * e_c;
ans = (phi_c - subtrahend) / alpha;

end