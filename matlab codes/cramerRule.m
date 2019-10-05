clear all;clc;close all;
a=[2;4;-2];
b=[3;4;3];
c=[-1;-3;-1];
S=[5;3;1];
A=[a,b,c];
x=[S,b,c];
y=[a,S,c];
z=[a,b,S];
X=det(x)/det(A)
Y=det(y)/det(A)
Z=det(z)/det(A)