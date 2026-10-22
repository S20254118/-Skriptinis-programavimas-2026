function kauliukaix(X)
% KAULIUKAIX Imituoja X losimo kauliuku metima.
%   KAULIUKAIX(X) sugeneruoja X atsitiktiniu skaiciu is aibes [1, 2, ..., 6]
%   ir isveda juos i komandini langa kaip vektoriu-eilute.
%   Ivesties kintamieji:
%   X - metamų kauliukų kiekis (teigiamas sveikasis skaičius).
%   Pavyzdys:
%   kauliukaix(5)

rezultatai = round(1 + 5 * rand(1, X));
disp('Iskrite kauliuku skaiciai:');
disp(rezultatai);
end