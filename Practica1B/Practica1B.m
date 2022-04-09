clear 
clc
clearvars
pkg load statistics

A = imread('tycho.jpg','jpg') 
imagesc(A)
axis equal
datos20 = [1:20]
datos50 = [1:50]
clc
printf("ingrese un punto central.\n")
[xc,yc] = ginput(1)
clc

printf("ingrese 20 puntos en el perimetro de la circunferencia.\n")
[x,y] = ginput(20)

for i = 1:20
  D = sqrt((x(i,1)-xc).^2+(y(i,1)-yc).^2)
  datos20(1,i) = D
  clc
end

clear i
clear x
clear y

clc

printf("ingrese 50 puntos en el perimetro de la circunferencia.\n")
[x,y] = ginput(50)


for j = 1:50
  D = sqrt((x(j,1)-xc).^2+(y(j,1)-yc).^2)
  datos50(1,j) = D
  clc
end
clear j
clear x
clear y
close
clc

datos20f = figure
hist(datos20, 5)
saveas(datos20f,'datos20histograma','png')
close
datos50f = figure
hist(datos50, 5)
saveas(datos50f,'datos50histograma','png')
close
superpuestas20f = figure
histfit(datos20, 5)
saveas(superpuestas20f,'superpuestas20','png')
close
superpuestas50f = figure
histfit(datos50, 5)
saveas(superpuestas50f,'superpuestas50','png')
close
clc

[media20, desviacion20] = normfit(datos20)
[media50, desviacion50] = normfit(datos50)

clc

printf("La media y desviacion de los 20 datos son: \n")
media20
desviacion20
printf("La media y desviacion de los 50 datos son: \n")
media20
desviacion50
