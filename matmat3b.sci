function [c] = matmat3b(A,B)
m=size(A,1)
n=size(B,2)
p=size(B,1)
c=zeros(m,n)
 for i = 1 : m
    for j = 1 : n
     for k = 1 : p
            c(i, j) = A(i, k)*B(k, j) + c(i, j);
        end
        end 
        end 
endfunction
