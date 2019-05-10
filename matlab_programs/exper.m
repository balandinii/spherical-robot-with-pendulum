% ��������� ����������
otkl = 0.0001;
%��������� �������� e
e_start = [otkl;0;-sqrt(1-otkl*otkl)];
%��������� �������� w
w_start = [0;0;0];
%��������� �������� omega
omega_start = [0;0;0];
%��������� ��������� ������ ������
xi_start = [0;11;0];
%��� �� ������� ��� ���������� ������� ������� ���������������� ���������
t_step = 0.01;
%���������� �����
n_step = 30000;
 
%��������� ��������� �������. state ������� �� 12 ���������. 
%������ ��� ���������� - ��� e.
%������ ��� - ��� w.
%������ - ��� omega.
%�������� - ��� xi.
state=[e_start(1);
       e_start(2);
       e_start(3);
       w_start(1);
       w_start(2);
       w_start(3);
       omega_start(1);
       omega_start(2);
       omega_start(3);
       xi_start(1);
       xi_start(2);
       xi_start(3);];
 
%������ �������
[T,STATE_EV]=ode45('total_calc', 0:t_step:(n_step*t_step), state);
 
%������� ������ ������������ ��� �������� �� �������
plot(T, STATE_EV(1:(n_step+1), 11))
