function q = Q(t, state)
%данная функция вычисляет управление по состоянию системы и текущему
%моменту времени 

e=[state(1);state(2);state(3)];
omega=[state(7);state(8);state(9)];
ans = [0;0;0];
if(t<30)
    ans(2) = -1;
end
if(t>120)
    ans(2) = - 0.1*omega(2);
end
q=ans;
%q=[0;0;0];
end
