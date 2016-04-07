dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaPt03_01.txt');

time = dadosParkinson(:,1);
totalLeftFoot = dadosParkinson(:,18);
totalRightFoot = dadosParkinson(:,19);

x = time(1:500);
y1 = totalLeftFoot(1:500);
y2 = totalRightFoot(1:500);
plot(x,y1,x,y2);
% [p,n]=peakdetect(y1);
% [a,b]=peakdetect(y2);
% m1 = max(p)
% m2 = max(a)
% mn1 = min(n)
% mn2 = min(b)
