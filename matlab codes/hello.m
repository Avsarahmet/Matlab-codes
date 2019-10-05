clear all;clc;close all;
A= [100,10,1,-1;15,15,15,-1;1,10,100,-1;-1,-1,1,0];
B=[0;0;396;1];
if det(A)~=0
    x=A\B
end
