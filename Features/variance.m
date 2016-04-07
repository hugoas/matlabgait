dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaPt03_01.txt');

time = dadosParkinson(:,1);
totalLeftFoot = dadosParkinson(:,18);
%totalRightFoot = dadosParkinson(:,19);

x = totalLeftFoot(1:500);
%y = totalRightFoot(1:10);
%plot(x,y);
[p,n]=peakdetect(x);
m1 = var(p)
m2 = var(n)