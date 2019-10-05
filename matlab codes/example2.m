clear all;clc;close all;
x=[0 1 3 5 6];
y=[-1 1 3 2 -2];
p=polyfit(x,y,4)
xp=0:0.1:6;
yp=polyval(p,xp);
plot(x,y,'ro',xp,yp)