dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaPt04_01.csv');
dadosControle = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaCo02_01.csv');

% time = dadosParkinson(:,1);
x = dadosParkinson(:,19);
y = dadosControle(:,19);
% z = dadosParkinson(:,20);
X = x(1:50);
Y = y(1:50);

% parkinson = ismember(X,Y);
% [train, test] = crossvalind('holdOut',parkinson);
% cp = classperf(parkinson);
% svmStruct = svmtrain(parkinson(train,:),X(train),'showplot',true);
% X = meas(inds,1:4);
% y = species(inds);