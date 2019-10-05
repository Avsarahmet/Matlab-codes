clear all;clc;close all;
syms x;
f(x)=x^3-6*x^2+11*x-6.1;
tol=10^-5; i=1; X(1)=3;
while abs(f(X(i)))>tol
    X(i+1)=X(i)-f(X(i))/subs(diff(f,x),X(i));
    i=i+1;
end
[X' double(f(X))']