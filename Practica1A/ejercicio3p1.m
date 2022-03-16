clc
clear all
close all

M = load("matriz.dat",'-ascii')
[n, m] = size(M) % Guardo el otput de las dimensiones en dos variables distintas n->filas m->columnas
v1 = M(2,:)
v2 = M(4,:)
v3 = M(:,2)
Z = zeros(n,m)
O = ones(n,m)
save("ejercicio3p1.mat", 'n', 'm', 'v1', 'v2', 'v3', 'Z', 'O')
x1 = M(:,2)
y1 = M(:,4)
x2 = M(:,1)
y2 = M(:,3)
f1 = figure
plot(x1,y1)
title("Graficas de ejercicio 3")
ylabel("Valores de Y")
xlabel("valores de X")
hold on
plot(x2,y2)
hold off
saveas(f1,'grafica3p1','jpeg')





