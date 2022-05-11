clear;
clc;

Tref = 293;
Rref = 1.30;
alpha = 4.5e-03;
k = physconst('Boltzmann');

V = [12.00, 11.10, 10.30, 10.00, 9.10, 8.60, 8.30, 7.80, 7.30, 7.00, 6.10, 5.60];
I = [1.74, 1.67, 1.60, 1.58, 1.50, 1.46, 1.43, 1.39, 1.34, 1.31, 1.23, 1.18];
Vout = [169.9, 147.2, 130.8, 124.3, 105.6, 95.7, 90.1, 82.1, 72.8, 67.8, 53.2, 45.8];

T = ((I-Rref)./(alpha*Rref))+Tref;

LgVs = log10(Vout);
LgKT = log10(k*(T.^(12)));
p = polyfit(LgVs, LgKT, 1);
j = (p(1)*LgVs)+p(2);

hold on
scatter(LgVs, LgKT);
plot(LgVs, j);


%Have to Fix it