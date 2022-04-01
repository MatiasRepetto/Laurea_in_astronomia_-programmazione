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

for i = 1:20
  printf("ingrese un punto central y uno en el perimetro de la circunferencia a medir.\n")
  printf("Luego de hacer click cpn el raton aprete la tecla enter.\n")
  [xc,yc] = ginput
  [x,y] = ginput
  D = sqrt((x-xc).^2+(y-yc).^2)
  datos20(1,i) = D
  clc
end
clear i

for j = 1:50
  printf("ingrese un punto central y uno en el perimetro de la circunferencia a medir.\n")
  printf("Luego de hacer click cpn el raton aprete la tecla enter.\n")
  [xc,yc] = ginput
  [x,y] = ginput
  D = sqrt((x-xc).^2+(y-yc).^2)
  datos50(1,j) = D
  clc
end
clear j
close
clc

datos20f = figure
hist(datos20, 4)
saveas(datos20f,'datos20histograma','png')
close
datos50f = figure
hist(datos50, 4)
saveas(datos50f,'datos50histograma','png')
close
superpuestas20f = figure
histfit(datos20, 4)
saveas(superpuestas20f,'superpuestas20','png')
close
superpuestas50f = figure
histfit(datos50, 4)
saveas(superpuestas50f,'superpuestas50','png')
close
clc

