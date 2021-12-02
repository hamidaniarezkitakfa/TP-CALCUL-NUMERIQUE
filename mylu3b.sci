function [L,U] = mylu3b(A)
 n = size (A,1);
 for k= 1 :n-1
 for i= k+1: n
   A(i,k) = A(i,k)/A(k,k);
  end
 for i = k+1:n
  for j = k+1:n
  A(i,j) = A(i,j)-A(i,k)*A(k,j);
  end
  end
end
disp(A);
endfunction
function [L, U] = mylu3b(A)
n = size(A,1);
U = triu(A);
L = eye(n,n)+tril(A,-1);
for k=1:n-1
   for i=k+1:n
   A(i,k) = A(i,k)/A(k,k);
end
for i=k+1:n
  for j=k+1:n
    A(i,j) = A(i,j) - A(i,k)*A(k,j);
end
end
end
endfunction





//Reponse a la question 3
function [L, U] = mylu1b(A)
n = size(A,1);
U = triu(A);
L = eye(n,n)+tril(A,-1);
for k=1:n-1

A(k+1:n,k) = A(k+1:n,k)/A(k,k);
A(k+1:n,k+1:n) = A(k+1:n,k+1:n)-A(k+1:n,k)*A(k,k+1:n);
end

endfunction



// la méthode de pivot partiel

function [L, U, P] = mylu(A)
n = size(A)(1);
P = eye(n,n)(row,:);
U = triu(A);
L = eye(n,n)+tril(A,-1);
//le vecteure des permutations des ligne de A
row = [1:n]; 


for k=1:n-1

//récupère le max piv à la ligne ind du vecteur colonne sous l'élément
//diagonal A(k,k)
[piv,ind] = max(abs(A(k:n,k)));

//convertit l'indice local en indice global de la ligne à échanger
ind = k-1+ind; 
q = row(1,ind);
if (ind~=k) 
//stockage temporaire de la ligne à échanger dans le vecteur new
new = A(ind,:);
//échange
A(ind,:) = A(k,:); 
//mise à jour du vecteur des permutations

row(1,ind) = row(1,k);
row(1,k) = q;
end
end
endfunction
 
