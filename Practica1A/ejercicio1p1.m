clc
clear all
close all

v = [55:5:480]
n = numel(v) % A diferencia de size que devuelve las dimensiones del vector numel devuelve la cantidad de items
u = nthroot(v,3) % nos da la raiz cubica de todo el vector v, ojo por que si una entrada es negativa esta nos arroja 3 resultados de los cuales 2 son complejos
v = transpose(v)
u = transpose(u)
q = n*v
s = v*transpose(u)
t = mrdivide(u, v) % Unica manera de dividir es si volvemos a transponer a U devido a que de lo contrario hay problema de dimension 
sumq = 0
sums = 0
sumt = 0
[fil, colum] = size(q)
for i=1:colum
  for j=1:fil
    sumq = sumq + q(j,i)
  endfor
endfor
[fil, colum] = size(s)
for i=1:fil
  for j=1:colum
    sums = sums + s(i,j)
  endfor
endfor
[fil, colum] = size(t)
for i=1:fil
  for j=1:colum
    sumt = sumt + t(i,j)
  endfor
endfor
clear fil
clear colum
clear i
clear j

save("ejercicio1p1.mat", 'v', 'n', 'u', 'q', 's', 't', 'sumq', 'sums', 'sumt')