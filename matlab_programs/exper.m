% начальное отклонение
otkl = 0.0001;
%начальное значение e
e_start = [otkl;0;-sqrt(1-otkl*otkl)];
%начальное значение w
w_start = [0;0;0];
%начальное значение omega
omega_start = [0;0;0];
%начальное положение центра робота
xi_start = [0;11;0];
%шаг по времени для численного решения системы дифференциальных уравнений
t_step = 0.01;
%количество шагов
n_step = 30000;
 
%начальное состояние системы. state состоит из 12 перменных. 
%Первые три переменных - это e.
%Вторые три - это w.
%Третьи - это omega.
%Четвёртые - это xi.
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
 
%Решаем систему
[T,STATE_EV]=ode45('total_calc', 0:t_step:(n_step*t_step), state);
 
%Выводим график интересующей нас величины от времени
plot(T, STATE_EV(1:(n_step+1), 11))
