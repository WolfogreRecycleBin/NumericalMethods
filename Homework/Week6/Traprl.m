function [I, S] = Traprl(f, a, b, m)
%TRAPRL Summary of this function goes here
%   Detailed explanation goes here
    f = eval(strcat('@(x)',f));
    
    h = b - a;
    T = (b - a)/2*(f(a)+f(b));
    while true
        H = 0;
        x = a + h /2;
        while x<b
            H = H + f(x);
            x = x + h;
        end
        T1 = 0.5 * (T + h*H);
        if(abs(T1 - T)<m)
            I = T1;
            break;
        end
        h = 0.5*h;
        T = T1;
    end
    S = (1/3)*(4*T1 - T);
end

