% Vardas: Nikita
% Pavardė: Jankovič
% Grupė: Ef-25/1
% Data: 2026-09-24
% Variantas: 6 (Privaloma) ir 22 (Papildoma)
x1 = -pi:0.1:pi;
y1 = sin(x1);
figure(1)
plot(x1, y1)
title('Funkcija f(x) = sin(x)')
xlabel('x')
ylabel('y')
grid on
axis([min(x1) max(x1) min(y1) max(y1)])
xticks(-pi:pi/4:pi)
xticklabels({'-\pi', '-3\pi/4', '-\pi/2', '-\pi/4', '0','\pi/4', '\pi/2', '3\pi/4', '\pi'})
legend('sin(x)')
g = gca;
g.XAxisLocation = 'origin';
g.YAxisLocation = 'origin';


x2 = -pi:0.1:pi;
y2_1 = 2*sin(x2).*cos(x2);
y2_2 = 3*sin(x2).*cos(x2);
figure(2)
plot(x2, y2_1, 'LineWidth', 5)
hold on
plot(x2, y2_2, 'LineWidth', 5)
hold off
title('Funkcijos f_1(x) ir f_2(x)')
xlabel('x')
ylabel('y')
grid on
y_min = min([y2_1, y2_2]);
y_max = max([y2_1, y2_2]);
axis([min(x2) max(x2) y_min y_max])
xticks(-pi:pi/4:pi)
xticklabels({'-\pi', '-3\pi/4', '-\pi/2', '-\pi/4', '0','\pi/4', '\pi/2', '3\pi/4', '\pi'})
legend('2sin(x)cos(x)', '3sin(x)cos(x)')
g = gca;
g.XAxisLocation = 'origin';
g.YAxisLocation = 'origin';

t = 0:pi/20:4*pi;
xt = sin(t);
yt = cos(t);
zt = tan(t);
figure(3)
plot3(xt, yt, zt, 'o-')
title('Trimatis grafikas: sin(t), cos(t), tan(t)')
xlabel('x(t)=sin(t)')
ylabel('y(t)=cos(t)')
zlabel('z(t)=tan(t)')
grid on

A = 4;
f = 3;
sigma = 1;
U1 = 2.5;
U2 = 1.5;
t_sig = 0:0.001:1;
s = A*sin(2*pi*f*t_sig) + 0.5*A*cos(4*pi*f*t_sig);
n = sigma*randn(size(t_sig));
pradinis = s + n;
filtruotas = pradinis;
filtruotas(abs(filtruotas) < U2) = 0;
ind_virs = pradinis > U1;
t_virs = t_sig(ind_virs);
sig_virs = pradinis(ind_virs);
min_val = min(sig_virs);
max_val = max(sig_virs);
t_min = t_virs(sig_virs == min_val);
t_max = t_virs(sig_virs == max_val);
figure(4)
subplot(2, 1, 1)
plot(t_sig, pradinis, 'Color', 'b')
hold on
plot(t_sig, filtruotas, 'Color', [0.5, 0, 0.5])
yline(U1, ':', 'Color', 'k', 'LineWidth', 1.25)
yline(U2, '-', 'Color', 'k')
hold off
title('Pradinis ir filtruotas signalai su filtravimo ribomis')
xlabel('Laikas t, s')
ylabel('Įtampa, V')
grid on
axis([0 1 min(pradinis)-0.5 max(pradinis)+0.5])
legend('Pradinis signalas','Filtruotas signalas','Riba U_1','Riba U_2','Location', 'southeast')
subplot(2, 1, 2)
stem(t_virs, sig_virs, 'filled', 'MarkerSize', 4)
hold on
plot(t_min, min_val, 'rd', 'MarkerSize', 9,'MarkerFaceColor', 'r')
plot(t_max, max_val, 'gd', 'MarkerSize', 11,'MarkerFaceColor', 'g')
hold off
title('Signalo reikšmės viršijančios U_1 ribą')
xlabel('Laikas t, s')
ylabel('Įtampa, V')
grid on
axis([0 1 U1-0.5 max_val+0.5])
legend('Diskretus signalas (> U_1)','Minimali įtampa','Maksimali įtampa','Location', 'southeast')