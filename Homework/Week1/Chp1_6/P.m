function [y] = P(x)
x3 = vpa(x^3, 4);
x2 = vpa(x^2, 4);
x1 = vpa(x^1, 4);
y = vpa(x3-3*x2+3*x1-1, 4);
end