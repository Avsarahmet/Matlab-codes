clear all;clc;close all;
x=[0:0.5:5];
y=[6 4.83 3.7 3.15 2.41 1.83 1.49 1.21 0.96 0.73 0.64];
p=polyfit(x,log(y),1);
m=p(1);
b=exp(p(2));
xp=[0:0.1:5];
yp=b*exp(m*xp);
plot(xp,yp,x,y,'o')
grid
xlabel('x')
ylabel('y')
legend('uydurulan fonksiyon','verilen değerler')