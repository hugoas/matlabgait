% dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\JuCo25_01.txt');
% 
% time = dadosParkinson(:,1);
% totalLeftFoot = dadosParkinson(:,18);
% %totalRightFoot = dadosParkinson(:,19);

x = TMeanGaitH(1,1:100);
%y = totalRightFoot(1:500);
[p,n]=peakdetect(x);
%[p2,n2]=peakdetect(y);
%z = (x+y);
%u = (x+y);
%média
md1 = mean(p)
md2 = mean(n)
%md3 = mean(p2)
%md4 = mean(n2)
%desvio padrão
m1 = std(p)
m2 = std(n)
%m3 = std(p2)
%m4 = std(n2)
%cálculo da variância
cv = (m1+m2/md1+md2);
%cv2 = (m3+m4/md3+md4);

