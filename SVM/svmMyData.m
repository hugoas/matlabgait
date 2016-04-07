dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\dataTest1.txt');

%time = dadosParkinson(:,1);
x = dadosParkinson(:,1);
y = dadosParkinson(:,2);
z = dadosParkinson(:,6);
X = x(1:20);
Y = y(1:20);
Z = z(1:20)

figure;
svmStruct = svmtrain(X,Y,'ShowPlot',true);
%y = totalRightFoot(1:10);
%plot(x,y);
% [p,n]=peakdetect(x);
% m1 = rms(p)
% m2 = rms(n)