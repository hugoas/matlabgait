dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaPt04_01.txt');
dadosControle = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaCo02_01.csv');

time = dadosParkinson(:,1);
totalRightFootP = dadosParkinson(:,19);
totalRightFootC = dadosControle(:,19);
%totalRightFoot = dadosParkinson(:,19);

t = time(1:500);
x = totalRightFootP(1:500);
%[p,n]=peakdetect(x);
y = totalRightFootC(1:500);
%[p,n]=peakdetect(y);
figure
plot(t,x,t,y)