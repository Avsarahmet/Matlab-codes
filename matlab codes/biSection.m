clear all;clc;close all;
a= -10;
b= 10;
for iteration=1:100
    m=a+(b-a)/2;
    if ffk(a)*fonk(m)<0
        b=m;
    else
        a=m;
    end
    if abs(fonk(m))<0.0001
        break
    end
end
m
iteration