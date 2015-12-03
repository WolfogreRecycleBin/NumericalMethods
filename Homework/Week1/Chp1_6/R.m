function [y] = R(x)
old = digits(4);
s1 = vpa(x - 1);
y = vpa(s1 * s1);
y = vpa(y * s1);
digits(old);
end

