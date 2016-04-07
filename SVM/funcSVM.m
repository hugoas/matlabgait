dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaPt04_01.csv');
dadosControle = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaCo02_01.csv');

%time = dadosParkinson(:,1);
x = dadosParkinson(:,19);
y = dadosControle(:,19);
z = dadosParkinson(:,20);
X = x(1:50);
Y = y(1:50);
Z = z(1:50);
%xdata = me(51:end,3:4);
%group = Z(51:end);
svmStruct = svmtrain(X,Z,'ShowPlot',true);