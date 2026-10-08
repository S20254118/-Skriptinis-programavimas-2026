% Vardas: Nikita
% Pavardė: Jankovič
% Grupė: Ef-25/1
% Data: 2026-10-01
% Variantas: 5 (Privaloma) ir 24 (Papildoma)

x_rand=(2*rand(1,200)-1).*sqrt(pi/2);
y_rand=(2*rand(1,200)-1).*sqrt(pi/2);

x_vec=linspace(min(x_rand),max(x_rand));
y_vec=linspace(min(y_rand),max(y_rand));
[X1,Y1]=meshgrid(x_vec,y_vec);
Z1=sin(X1.^2 + Y1.^2);
figure(1)
surf(X1, Y1, Z1)
colormap default
shading interp
view(50, 30)
title('f(x,y) = sin(x^2 + y^2)')
xlabel('x ašis')
ylabel('y ašis')
zlabel('f(x,y)')
grid on

x2 = linspace(-2, 1, 100);
y2 = linspace(-2, 1, 100);
[X2, Y2] = meshgrid(x2, y2);
Z2 = 1-2*X2.^2-3*Y2.^2;
figure(2)
surf(X2, Y2, Z2)
colormap default
shading interp
view(60, 30)
title('Trimatė funkcija f(x,y) = 1 - 2x^2 - 3y^2')
xlabel('x ašis')
ylabel('y ašis')
zlabel('f(x,y)')
grid on

x = linspace(-2, 2, 50)
y = linspace(-2, 2, 50);
[X, Y] = meshgrid(x, y);

Z = 1 - (X.^2 + Y.^2);

figure(3)

subplot(1, 3, 1)
surf(X, Y, Z)
colormap(gca,hot)
shading interp
title('hot')
xlabel('x')
ylabel('y')
zlabel('z')
grid on

subplot(1, 3, 2)
surf(X, Y, Z)
colormap (gca, cool)
shading interp
title('cool')
xlabel('x')
ylabel('y')
zlabel('z')
grid on

subplot(1, 3, 3)
surf(X, Y, Z)
colormap (gca,summer)
shading interp
title('summer')
xlabel('x')
ylabel('y')
zlabel('z')
grid on