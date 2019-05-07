function ans = vp( v1, v2 )

y=v1;
y(1)=v1(2)*v2(3)-v1(3)*v2(2);
y(2)=v1(1)*v2(3)-v1(3)*v2(1);
y(3)=v1(1)*v2(2)-v1(2)*v2(1);
y(2)=-y(2);
ans=y;
end