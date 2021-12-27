function [x,errfi,m]=jacobi(A,b,nb_it,e,x0)
   n=size(x0,1);
   x=zeros(n,1);
   m=1;
   errfi=zeros(nb_it,1);
   err=4;
   while m<nb_it
       x(1,1)=(1/A(1,1))*(b(1)-A(1,2)*x0(2));
   x(n,1)=(1/A(n,n))*(b(n)-A(n,n-1)*x0(n-1));
       for i=2:n-1
           x(i,1)=(1/A(i,i))*(b(i)-A(i,i-1)*x0(i-1)-A(i,i+1)*x0(i+1))
       end
       err=norm(x-x0);
       if err<e
           break
       end
       errfi(m,1)=err;
       m=m+1;
       x0=x
           
   end
endfunction
//test 
//A=[7,9,4;7,5,6;4,0,3]  
//b=[7;2;7]
//x0=[0;0;0]
//[x,errfi,m]=jacobi(A,b,100,1d-18,x0)
//bn_it nombre iteration 
//e est la precision 
