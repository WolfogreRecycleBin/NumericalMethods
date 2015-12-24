function newpoly(X,Y)

%Input     - X is a vector that contains a list of abscissas
%             - Y is a vector that contains a list of ordinates

n=length(X);
D=zeros(n,n);
D(:,1)=Y';

%Use formula (20) to form the divided difference table

for j=2:n
   for k=j:n
      D(k,j)=(D(k,j-1)-D(k-1,j-1))/(X(k)-X(k-j+1));
   end
end


fprintf('%12s','X')
fprintf('%12s','F(X)')
for i = 1:length(D) - 1
    fprintf('%12s',strcat('DD', num2str(i)))
end

fprintf('\n')
s = size(D);
for i = 1:s(1)
    fprintf('%12f',X(i))
    for j = 1:i
        fprintf('%12f',D(i,j))
    end
    fprintf('\n')
end
end

