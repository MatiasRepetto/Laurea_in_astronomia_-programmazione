clc
clear all
close all

a = input('Ingrese el coeficiente de grado 2: ');
b = input('Ingrese el coeficiente de grado 1: ');
c = input('Ingrese el termino independiente: ');
x1 = (-(b) + sqrt(((b)^2)-4*(a)*(c)))/a
x2 = (-(b) - sqrt(((b)^2)-4*(a)*(c)))/a
clc
printf("El valor de x1 y x2 respectivamente es: \n")
x1
x2
