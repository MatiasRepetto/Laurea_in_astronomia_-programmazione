clear;
clc;
close all;


objeto = imread('prueba.tif');
sizObj = size(objeto);

stat = mod(sizObj(1,1), 2);
stat1 = mod(sizObj(1,2), 2);

if not(stat == 0)
    newq = int32((sizObj(1,1)-1));
    objeto = imresize(objeto, [newq sizObj(1,2)]);
end

sizObj = size(objeto);

if not(stat1 == 0)
    newq = int32((sizObj(1,2)-1));
    objeto = imresize(objeto, [sizObj(1,1) newq]);
end

objeto = rgb2gray(objeto(:,:,1:3));
figure(1);
imagesc(objeto);
axis image;
colormap gray;
FOTO = fftshift(fft2(objeto)); % Hago transformada de fourier
figure(2);
imagesc(log10(abs(FOTO))); %log10 abs para poder visualizar la parte real 
axis image;
FILTRO = ones(size(objeto)); %Creo matriz de 1s para hacer de removedor
[y, x] = ginput;
x = int32(x); % para funcionar como coord de matrix deben estar en int
y = int32(y);
psidel = 2; % Espacio de eliminacion [x-psidel:x+psidel,y-psidel:x+psidel]

for i = 1:length(x)
    FILTRO(x(i)-psidel:x(i)+psidel,y(i)-psidel:y(i)+psidel) = 0;
end

FILTRO(2:end,2:end) = FILTRO(2:end,2:end).*rot90(FILTRO(2:end,2:end), 2); %Roto 2 * 90 grados para hacer sensacion de espejo
fotoFil = FOTO.*FILTRO;
figure(2);
imagesc(log10(abs(fotoFil)));
axis image;
close;
fotoFil = ifft2(fftshift(fotoFil)); % Inversa fourier
figure(1);
imagesc([objeto, fotoFil]);
axis image;
colormap gray;
clear;








