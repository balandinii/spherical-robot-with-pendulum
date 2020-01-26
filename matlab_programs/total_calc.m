function t_state = total_calc( t, state )

%параметры системы
J=0.666666;
j=1.0e-10;
p=1;
mu=1;
gamma=[0; 0; -1];

%управление системой
q=Q(t, state);

%здесь мы одну переменную - state, которая одна описывает 
%состояние системы, разделяем на несколько, которые вместе описывают состояние системы.
e=[state(1);state(2);state(3)];
w=[state(4);state(5);state(6)];
omega=[state(7);state(8);state(9)];
xi=[state(10);state(11);state(12)];
gamma_k=normal(xi);

%вычисление t_w и t_omega
phi=equation_9( q, p, gamma, gamma_k, omega, e, mu );
psi=equation_10( q, p, gamma, omega, e );
alpha=equation_11( J, mu );
beta=equation_12( j );
[phi_c, phi_l] = decompose(phi, gamma_k);
[psi_c, psi_l] = decompose(psi, gamma_k);
[e_c, e_l] = decompose(e, gamma_k);
t_w_l=equation_13( phi_l, J );
% e_l_o - флаг, регулирующий то, какие формулы мы используем. Если он true,
% то используются формулы для случая e_l равного нулю. В противном случае
% используются формулы для e_l не равного нулю. 
if (abs(e_l) < 1.0e-16)
    t_omega_c=equation_36(psi_c, e_c, beta);
    t_omega_l=equation_38(alpha, psi_l, p, e_c, phi_c, beta);
    t_w_c=equation_39(phi_c, p, alpha, psi_l, e_c, beta);
else
    psi_l_str=equation_18( e_l, psi_l, e_c, psi_c, p, phi_c, J, mu );
    phi_c_str=equation_19( p, e_l, phi_c, alpha, psi_c );
    a=equation_32( J, mu, e_l, e_c, j );
    b=equation_33( e_l, J, mu, e_c, j );
    c=equation_34( phi_c_str, psi_l_str, e_c, j );
    t_omega_c=equation_28_29( c, e_c, a, b, gamma_k );
    t_omega_l=equation_20( psi_l_str, e_l, beta, alpha, e_c, t_omega_c );
    t_w_c=equation_17( psi_c, p, e_l, phi_c, beta, t_omega_c, J, mu, e_c );
end

t_w=w;
t_w=t_w_c + t_w_l*gamma_k;
t_omega=omega;
t_omega=t_omega_c + t_omega_l*gamma_k;
t_e=vp(omega,e);
t_xi=vp(gamma_k, w);

%конструируем t_state
y=state;
%e=[state(1);state(2);state(3)];
%w=[state(4);state(5);state(6)];
%omega=[state(7);state(8);state(9)];
%xi=[state(10);state(11);state(12)];
y(1)=t_e(1);
y(2)=t_e(2);
y(3)=t_e(3);
y(4)=t_w(1);
y(5)=t_w(2);
y(6)=t_w(3);
y(7)=t_omega(1);
y(8)=t_omega(2);
y(9)=t_omega(3);
y(10)=t_xi(1);
y(11)=t_xi(2);
y(12)=t_xi(3);

t_state=y;
end