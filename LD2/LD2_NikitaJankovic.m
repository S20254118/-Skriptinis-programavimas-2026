% Vardas: Nikita
% Pavardė: Jankovič
% Grupė: Ef-25/1
% Data: 2026-09-17
% Variantas: 11

v1 = (-pi:0.7:2*pi)'
v2 = cos(v1)
v3 = (v1.^v2)'

X = [exp(5), exp(-1i*exp(1)), log(1)
    log(pi), -2, -sin(pi)]

X_1n = [X(2,1)^2, X(1,3), X(2,3)^2]
X_prijungta = [X; X_1n]
det_X = det(X_prijungta)

A = 4;
f = 3;
sigma = 1;
U1 = 2.5;
U2 = 1.5;
t = 0:0.001:1;
s = A * sin(2*pi*f*t)+0.5*A*cos(4*pi*f*t);
n = sigma*randn(size(t));
signalas = s+n;

atrinktos_reiksmes = signalas(signalas > U1);
filtruotas = signalas;
filtruotas(abs(filtruotas) < U2) = 0;
dydis_nefiltruoto = length(signalas)
dydis_atrinktu = length(atrinktos_reiksmes)
max_filtruoto = max(filtruotas)
min_filtruoto = min(filtruotas)

A = input('Iveskite vektoriu A:[n1, n2, n3 ... n4] ');
B = [A, A(end:-1:1)] 
