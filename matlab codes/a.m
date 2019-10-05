clear all;close all;clc;
x= input('x:');
if -1<=x&x<0
    funct=1-x
elseif 0<=x&x<2
    funct=x*x
elseif 2<=x&x<=3
    funct=-1
else fprintf('the input value should be in the domain of [-1,3]')
end
fprintf('function=%.2f',funct)