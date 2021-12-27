function [L,D]=myldlt(A)
    
 n=size(A,"r")
 D=diag(A)
 v=zeros(n,1)
  L=tril(A)
   for j=2:n
    for i=1:j-1
      v(i)=L(j,i)*D(i)
       end
      D(j)=A(j,j)-L(j,1:j-1)*v(1:j-1)
      L(j+1:n,j)=[A(j+1:n,j)-L(j+1:n,1:j-1)*v(1:j-1)]/D(j)
    end
   for i=1:n
      L(i,i)=1
   end
endfunction
//test
// A=[2,4,6;4,0,10;6,10,12]
//[L,D]=myldlt(A)
