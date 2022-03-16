clc
clear all
close all

A = [3,0,-2;1,4,5;-1,1,2]
B = [1,-1,1;0,6,1;3,-2,-5]
C = [-1,-1,2;5,1,1;-3,-2,3]

p1a = (A+B-C)
p1b = A*B %Producto usual de matrices
p1c = (C)^2 % Producto usual de matrices 
p2 = C.*C % En este caso hacemos el producto punto o hadammad p2 != p1c
p3 = inverse(A)
p4 = det(B)
D = A.*B %Volvemos a tener el producto hadammad de matrices a diferencia de p1b

save("ejercicio2p1.dat", 'A', 'B', 'C', 'p1a', 'p1b', 'p1c', 'p2', 'p3', 'p4', 'D', '-ascii')
 
