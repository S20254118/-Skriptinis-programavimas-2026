% Vardas: Nikita
% Pavardė: Jankovič
% Grupė: Ef-25/1
% Data: 2026-10-15
%Variantas: 14 (Privaloma)
global x y

x = 2*pi:-0.1:-2*pi;
y = zeros(size(x));

skaiciuoti_ne_nuli;
skaiciuoti_nuli;

figure(1)
plot(x, y, '--y*', 'LineWidth', 1.5, 'MarkerEdgeColor', 'k')
title('Funkcija y(x) = sin(x)/x (sinc)')
xlabel('x')
ylabel('y')
grid on