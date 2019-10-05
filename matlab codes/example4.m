clear all;clc;close all;
t=[0 0.5 1 6 7 9];
y=[0 1.6 2 2 1.5 0];
p=polyfit(t,y,5);
tm=0:0.1:9;
ym=polyval(p,tm);
plot(t,y,'o',tm,ym)
polyval(p,4)
axis([0,9,-0.5,2.5]);