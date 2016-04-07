%dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaPt03_01.txt');

time = dadosParkinson(:,1);
totalLeftFoot = dadosParkinson(:,18);
totalRightFoot = dadosParkinson(:,19);

x = time(1:500);
y1 = totalLeftFoot(1:500);
y2 = totalRightFoot(1:500);
%plot(x,y1,x,y2);
[a,b]=peakdetect(y1);
[c,d]=peakdetect(y2);
%mínimo e máximo
m1 = max(a)
m2 = max(c)
mn1 = min(b)
 mn2 = min(d)
%média
md1 = mean(a)
md2 = mean(b)
md3 = mean(c)
md4 = mean(d)
%desvio padrão
m1 = std(a)
m2 = std(b)
m3 = std(c)
m4 = std(d)
%cálculo da variância
cv = (m1+m2/md1+md2);
cv2 = (m3+m4/md3+md4);

