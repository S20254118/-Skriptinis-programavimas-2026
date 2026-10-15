function skaiciuoti_ne_nuli
global x y

ind = (x ~= 0);
y(ind) = sin(x(ind)) ./ x(ind);
end