function[c]= matmat2b(A,B)
    m=size(A,1)
    n=size(B,2)
    c=zeros(m,n)
        for i = 1 : m
            for j = 1 : n
              c(i, j) = A(i, :)*B(:, j) + c(i, j);
end 
end 
endfunction
