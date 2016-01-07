function [ result ] = GaussLegender( f, a, b)
    f = eval(strcat('@(x)',f));
    n = 1;
    h = (b - a) / n;
    t = sqrt(3) / 3;
    k = 0;
    result = h / 2 * ( f(a + (k + 0.5 * (1 - t) * h)) + f(a + (k + 0.5 * (1 + t) * h)));
end

