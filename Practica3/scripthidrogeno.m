clear;
clc;

M = load('datoshidrogeno.txt');
x = M(:,2);
lumos = M(:,4);
plot(x, lumos);
[cantpeak, peaks] = findpeaks(lumos);
cftool(peaks, cantpeak);
