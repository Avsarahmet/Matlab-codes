clear all;close all;clc;
k=1;
s=0;
while 1
    s=s+((-1)^(k-1))/k;
    e(k)=(abs(log(2)-s)/log(2));
    if e(k)<0.05
        break;
    end
    k=k+1;
end
plot(e,'kp')