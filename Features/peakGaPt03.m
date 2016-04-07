dadosParkinson = importdata('C:\Users\Hugo Souza\Documents\MATLAB\GaCo01_01.txt');

time = dadosParkinson(:,1);
%totalLeftFoot = dadosParkinson(:,18);
totalRightFoot = dadosParkinson(:,19);

%x = totalLeftFoot(80:200);
y = totalRightFoot(80:200);
%plot(x,y);
[p,n]=peakdetect(y);
%Caracter�sticas
%m�dia
media1 = mean(p)
media2 = mean(n)
%m�ximo
max1 = max(p)
max2 = max(n)
%m�nimo
min1 = min(p)
min2 = min(n)
%desvio padr�o
desv_padrao1 = std(p)
desv_padrao2 = std(n)
%desvio absoluto m�dio
desvio_ab1 = mad(p)
desvio_ab2 = mad(n)
%Correla��o entre eixos
m1 = xcorr(p)
m2 = xcorr(n)
%vari�ncia
var1 = var(p)
var2 = var(n)
%valor quadr�tico m�dio
valor_quad_m1 = rms(p)
valor_quad_m2 = rms(n)
%mediana
md1 = median(p)
md2 = median(n)