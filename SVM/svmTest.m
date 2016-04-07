dp = importdata('C:\Users\Hugo Souza\Google Drive\Msc UFAL\Pesquisa 2015\amostraDP.csv');
co = importdata('C:\Users\Hugo Souza\Google Drive\Msc UFAL\Pesquisa 2015\amostraCo.csv');

dataDP = [dp(:,1), dp(:,2)];
dataCo = [co(:,1), co(:,2)];
groups = ismember('dataDP', 'dataCo');
[train, test] = crossvalind('holdOut',groups);
cp = classperf(groups);
svmStruct = svmtrain(dataDP(train,:),groups(train),'showplot',true);