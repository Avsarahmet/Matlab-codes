clear all;clc;close all;
f=[1 -6 11 -6.1];
r=roots(f);
s=max(r)
x=0:0.1:5;
y=polyval(f,x);
plot(x,y)
grid;