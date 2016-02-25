function Euler(f,a,b,ya,M,rightf)

%Input    - y'=f is the function 
%            - a and b are the left and right endpoints
%            - ya is the initial condition y(a)
%            - M is the number of steps
%            - rightf is the right function

f = eval(strcat('@(x,y)',f));
rightf = eval(strcat('@(x)',rightf));
h=(b-a)/M;
T=zeros(1,M+1);
Y=zeros(1,M+1);

T=a:h:b;

Y(1)=ya;



for j=1:M
   Y(j+1)=Y(j)+h*f(T(j),Y(j));
end

rh = (b-a)/1000;
rightX=a:rh:b;
rightY=zeros(1,1000 + 1);
for j=1:1000 + 1
   rightY(j)=rightf(rightX(j));
end

plot(T,Y,'r+');
hold on;
plot(rightX,rightY);
