function x=Gauss(A,b,c)      
if (length(A) ~= length(b))                
    disp('Input error') 
    return; 
end
 
disp('Input are Ax=b:')                
A 
b  
disp('------------------------')  
 
n = length(A);   
for k = 1 : n-1                                
    [p,q] = max(abs(A(k:n,k)));           
    q = q + k - 1;                         
    if abs(p) < c  
        disp('Failed,det(A)->0'); 
        break;   
    elseif q > k  
        temp1 = A(k,:);                  
        A(k,:) = A(q,:);                    
        A(q,:) = temp1; 
        temp2 = b(k,:); 
        b(k,:) = b(q,:); 
        b(q,:) = temp2;  
    end
    for i = k + 1 : n          
    m(i,k) = A(i,k)/A(k,k);                      
    A(i,k:n) = A(i,k:n) - m(i,k) * A(k,k:n);     
    b(i) = b(i) - m(i,k) * b(k);             
    end
end
 
disp('The upper triangular matrix:') 
A                            
 b(n) = b(n) / A(n,n);                     
for i =n-1 : -1 : 1       
    b(i) = (b(i) - sum(A(i,i+1:n) * b(i+1:n))) / A(i,i); 
end 
 
clear x;  
disp('Solution of AX=b:') 
x=b;
