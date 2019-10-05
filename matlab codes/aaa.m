clear all;close all;clc;
i=1;
for x=-1:0.1:3
    if -1<=x&x<0
    y=1-x
elseif 0<=x&x<2
    y=x*x
elseif 2<=x&x<=3
    y=-1
    end
    A(i)=y;
    i=i+1;
end
plot(A,'*')