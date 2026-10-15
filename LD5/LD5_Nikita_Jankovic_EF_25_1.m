% Vardas: Nikita
% Pavardė: Jankovič
% Grupė: Ef-25/1
% Data: 2026-10-08
% Variantas: 21 (Privaloma) ir 21 (Papildoma)

c = {42,rand(5),'tekstas', [1,2,3]}
ilgiai = cellfun(@length, c)

while true
    clear, close all
    a=input('Iveskite a:');
    b=input('Iveskite b:');
    c=input('Iveskite c:');
    x=input('Iveskite x:');
    if a==10 && b==10 && c==0 && x==1
        disp('Ivestos stabdymo reiksmes.');
        break;
    end
    f=a*x^2+b*x+c;
    disp(['Apskaiciuota f reiksme: ', num2str(f)]);
end  

tekstas = input('Iveskite sakini su keliais tarpais: ', 's');

rezultatas = '';
pasalinta_tarpu = 0;
ankstesnis_tarpas = false;

for i = 1:length(tekstas)
    simbolis = tekstas(i);

    if simbolis == ' '
        if ankstesnis_tarpas
            pasalinta_tarpu = pasalinta_tarpu + 1;
        else
            rezultatas = [rezultatas, simbolis];
            ankstesnis_tarpas = true;
        end
    else
        rezultatas = [rezultatas, simbolis];
        ankstesnis_tarpas = false;
    end
end

disp(['Apdorotas sakinys: ', rezultatas]);
disp(['Pasalintu tarpu skaicius: ', num2str(pasalinta_tarpu)]);



