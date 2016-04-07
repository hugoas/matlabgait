x = importdata('dataTest1.txt') 
dataX = [x(:,1), x(:,2)];
%dataY = [x(:,3), x(:,4)];

groups = ismember(dataset,'1.1');
[train, test] = crossvalind('holdOut',groups);
cp = classperf(groups);
% 
svmStruct = svmtrain(dataX(train,:),groups(train),'showplot',true);