clear all;clc;close all;
x=[8 10 12 14 16];
y=[3 15 25 8 2];

X=[length(x) sum(x) sum(x.^2);sum(x) sum(x.^2) sum(x.^3);sum(x.^2) sum(x.^3) sum(x.^4)];
Y=[sum(y);sum(x.*y);sum(x.*x.*y)];

A=X\Y;
xp=8:0.1:16;
yp=polyval([A(3) A(2) A(1)],xp);
plot(x,y,'bo',xp,yp)
polyval([A(3) A(2) A(1)],11)
A(3) 
A(2) 
A(1)