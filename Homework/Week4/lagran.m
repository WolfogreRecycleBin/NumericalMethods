function [C,L,y0]=lagran(X,Y,x0)

w=length(X);
n=w-1;
L=zeros(w,w);

%Form the Lagrange coefficient polynomials

for k=1:n+1
   V=1;
   for j=1:n+1
      if k~=j
         V=conv(V,poly(X(j)))/(X(k)-X(j));
      end
   end
   L(k,:)=V;
end

%Determine the coefficients of the Lagrange interpolator
%polynomial

C=Y*L;
function y =fun(x)
y = 0;
for i = 1 : length(C)
    y = y + C(i) * power(x, length(C) - i);
end
end

y0 = fun(x0);
x = [0:pi/100: 2 * pi];
y = fun(x);


plot(x,y,'r');
hold on;
y = sin(x);
plot(x,y);
hold on;
plot(X,Y,'ro');
hold on;
plot(x0,y0,'kv');
end
   