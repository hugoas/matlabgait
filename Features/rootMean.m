dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaPt03_01.txt');

time = dadosParkinson(:,1);
totalLeftFoot = dadosParkinson(:,18);
%totalRightFoot = dadosParkinson(:,19);

x = totalLeftFoot(80:200);
%y = totalRightFoot(1:10);
%plot(x,y);
[p,n]=peakdetect(x);
m1 = rms(p)
m2 = rms(n)