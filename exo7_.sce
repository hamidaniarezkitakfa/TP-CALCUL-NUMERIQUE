//generation de la matrice A avec la fonction rand()
n = 10
A=rand(n,n)
//vecteur xex

xex=rand(1:n)
//verification que x est vecteure colonne
xex=xex'
//b=A*xex
b=A*xex

//resolution du systeme Ax=b
//on a : Ax=b alors x=A\b ou x=inv(A)*b
x=A\b
//calcule de l'erreur avant :
err_avant=norm(xex-x)\norm(xex)
//calcule de l'erreur arriere :
r = b-A*x
err_arriére = norm(r)\(norm(A)*norm(x))

