% Vardas: Nikita
% Pavardė: Jankovič
% Grupė: Ef-25/1
% Data: 2026-10-15
%Variantas: 13 (Papildoma)
function [varargout] = grafsincos(x)

s = sin(x);
c = cos(x);

if nargout == 0
    figure
    plot(x, s, 'b-', 'LineWidth', 1.5)
    hold on
    plot(x, c, 'r--', 'LineWidth', 1.5)
    hold off
    grid on
    title('Funkcijos sin(x) ir cos(x)')
    xlabel('x')
    ylabel('y')
    legend('sin(x)', 'cos(x)', 'Location', 'best')
elseif nargout == 1
    varargout{1} = [s; c];
elseif nargout >= 2
    varargout{1} = s;
    varargout{2} = c;
end
end