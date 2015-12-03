function [y] = P(x)
old = digits(4);
x3 = vpa(x * vpa(x * x));
x2 = vpa(x * x);
x1 = vpa(x);
s3 = vpa(x3);
s2 = vpa(-3 * x2);
s1 = vpa(3 * x1);
s0 = vpa(-1);
y = vpa(s3 + s2 + s1 + s0);
digits(old);
end