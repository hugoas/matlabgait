dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaPt04_01.txt');

%time = dadosParkinson(:,1);
totalLeftFoot = dadosParkinson(:,18);
totalRightFoot = dadosParkinson(:,19);

%t = time(1:1000);
x1 = totalLeftFoot(1:10000);
x2 = totalRightFoot(1:10000);


findpeaks(x1,x2,'MinPeakDistance',100);
%findpeaks(x2,'MinPeakDistance',100);
xlabel('Perna Esquerda');
%ylabel('Perna Direita')
title('Picos proeminentes');