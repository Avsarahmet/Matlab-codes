clear all;clc;close all;
y=[0.5030 0.7229 0.7802 1.2106 1.7607 2.4649];
x=[0 1 2 5 10 15];
p=polyfit(x,y,1);
xp=[0:0.1:15];
yp=polyval(p,xp);
plot(x,y,'o',xp,yp)
grid
