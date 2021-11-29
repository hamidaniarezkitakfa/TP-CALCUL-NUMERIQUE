function[c]= matmat1b(A,B)
    m=size(A,1)
    n=size(B,2)
    c=zeros(m,n)
    for i = 1 : m
             c(i, :) = A(i, :)*B + c(i, :);
    end 
endfunction 
