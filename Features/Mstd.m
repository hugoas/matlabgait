dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\JuCo25_01.txt');

time = dadosParkinson(:,1);
totalLeftFoot = dadosParkinson(:,18);
totalRightFoot = dadosParkinson(:,19);

x = totalLeftFoot(1:1000);
y = totalRightFoot(1:1000);
z = (x+y);
% u = (x+y);
mean(std(z));
plot(z);