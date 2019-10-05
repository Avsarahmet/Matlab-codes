clear all; close all; clc;
n=input('give me a positive integer n:');
k=1;
s(k)=1;
while k<=n
    s(k+1)=s(k)+(1/(k^2+1));
    k=k+1;
end
plot(0:n,s,'*')