function Differential(f,df,x,h,m)
    f = eval(strcat('@(x)',f));
    df = eval(strcat('@(x)',df));
    prev = 0;
    while(h>m)
        r = (f(x + h) - f(x - h))/(2*h);
        fprintf('%12.10f\t%12.10f\t%12.10f\t%12.10f\n',h,r, prev - r, df(x) - r);
        prev = r;
        h = h / 2;
    end
end

