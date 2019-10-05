clear all;clc;close all;
xold=3;
for k=1:100
    xnew =fonk(xold);
    if abs(xnew-xold)<0.00001
        break
    end
    xold=xnew;
end
k
xnew