dadosNormal = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaCo02_01.csv');
dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaPt04_01.csv');

time = dadosNormal(:,1);
totalLeftFoot = dadosNormal(:,18);
totalRightFoot = dadosNormal(:,19);

x1 = totalLeftFoot(1:1000);
y1 = totalRightFoot(1:1000);

z1 = (x1+y1);
mean(z1);

time = dadosParkinson(:,1);
totalLeftFoot = dadosParkinson(:,18);
totalRightFoot = dadosParkinson(:,19);

x2 = totalLeftFoot(1:1000);
y2 = totalRightFoot(1:1000);

z2 = (x2+y2);
mean(z2);
soma = (z1+z2)
plot(soma);