//vecteur x vecteur ligne :

x=[1,2,3,4]
//sortie:
x  = 

   1.   2.   3.   4.

//vecteure y vecteur colonnes
y=[5;6;7;8]
//sortie:
y  = 

   5.
   6.
   7.
   8.
//les opérations :
//adition :
z=x+y'
//sortie:
z  = 

   6.   8.   10.   12.

//multiplication :

s=x*y
//sortie:
 s  = 

   70.

//taille des vecteurs :

size(x)
//sortie:
ans  =

   1.   4.

size(y)
//sortie:
 ans  =

   4.   1.

//norme de x 

norm(x)
//sortie:
 ans  =

   5.4772256
//matrice A 

A=[1,2,3;12,28,30;60,7,10;4,9,5]
//sortie :
A  = 

   1.    2.    3. 
   12.   28.   30.
   60.   7.    10.
   4.    9.    5. 
//la transposée de A

T=A'
//sortie:
 T  = 

   1.   12.   60.   4.
   2.   28.   7.    9.
   3.   30.   10.   5.
//les opération des deux matrices A et B


A=[3,8;6,9]
B=[9,4;3,8]
//multipication :

c=A*B
//sortie:
 c  = 

   51.   76.
   81.   96.

//addition :

d=A+B

//sortie:
 d  = 

   12.   12.
   9.    17.

//conditionnement :
u = cond(A)
//sortie :
u  = 

   8.9357085

