function [C,err] = csr(A, x)
    n = size(A,'r')
    C=zeros(n,1)
    for i=1:n
        for j=1:m
                C(i)=C(i)+A(i,j)*x(j);
        end
    end
endfunction
