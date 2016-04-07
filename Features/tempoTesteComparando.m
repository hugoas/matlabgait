dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaPt04_01.csv');
dadosControle = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaCo02_01.csv');

time = dadosParkinson(:,1);
totalLeftFootP = dadosParkinson(:,18);
totalLeftFootC = dadosControle(:,18);
%totalRightFoot = dadosParkinson(:,19);

t = time(1:100);
x = totalLeftFootP(1:100);
%y = totalRightFoot(1:500);
y = totalLeftFootC(1:100);
%t = linspace(-2*pi,2*pi);
%y1 = sin(x);
%y2 = cos(x);

figure
plot(t,x,t,y)