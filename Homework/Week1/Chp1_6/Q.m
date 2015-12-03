function [y] = Q(x)
old = digits(4);
y = vpa(x - 3);
y = vpa(y * x + 3);
y = vpa(y * x - 1);
digits(old);
end

