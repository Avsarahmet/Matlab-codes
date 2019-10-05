clear all;clc;close all;
t=[0 0.5 1 6 7 9];
y=[0 1.6 2 2 1.5 0];

tp=0:0.05:9;
yp=interp1(t,y,tp,'spline');
plot(t,y,'o',tp,yp)

%r=interp1(t,y,4,'spline')
r=givePoint(t,y,4)