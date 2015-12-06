function y = Solve(Fun)
%Input    - Fun is the function 
%Output - y is the zero
Fun = eval(strcat('@(x)',Fun));
a = -1;
b = 1;
while Fun(a) * Fun(b) >= 0 
    if -a>=b
        b = b * 2;
    else
        a = a * 2;
    end
end

while b - a > 1
    mid = (a + b) / 2;
    if Fun(a) * Fun(mid) <= 0
        b = mid;
    else
        a = mid;
    end
end

p0 = a;
p1 = b;
for k=1:100000
	p2=p1-Fun(p1)*(p1-p0)/(Fun(p1)-Fun(p0));	
	p0=p1;
	p1=p2;
	if abs(p2-p1)<0.0000001
        break;
    end
end
y = p0;
end

