dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaPt04_01.txt');

%time = dadosParkinson(:,1);
totalLeftFoot = dadosParkinson(:,18);
%totalRightFoot = dadosParkinson(:,19);

%t = time(1:1000);
x = totalLeftFoot(1:1000);
%y = totalRightFoot(1:1000);

findpeaks(x,'MinPeakDistance',100);
xlabel('Perna Esquerda');
%ylabel('Perna Direita')
title('Picos proeminentes');