function [v_c, v_l] = decompose( v, g )

v_l = sp(v, g);
v_c = v - g*v_l;
end