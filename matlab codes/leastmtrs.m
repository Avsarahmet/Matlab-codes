clear all;clc;close all;
x=[1 2 3 4 5];
y=[0.7 2.2 2.8 4.4 4.9];

X=[length(x) sum(x);sum(x) sum(x.^2)];
Y=[sum(y);sum(x.*y)];

b=X\Y;
xp=1:0.1:5;
yp=polyval([b(2) b(1)],xp);
plot(xp,yp,x,y,'bo')

