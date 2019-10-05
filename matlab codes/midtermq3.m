clear all; close all; clc;
error=10;
s0=0;
i=1;
while error>0.01;
    s(i)=s0+(-1)^(i-1)*4*1/(2*i-1);
    s0=s(i);
    error = abs(pi-s(i))/pi;
    i=i+1;
end
n = i-1;
fprintf('n = %d\n',n);
plot(1:n,abs(pi-s)./pi);
title('% error change');