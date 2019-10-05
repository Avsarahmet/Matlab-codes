function [r e]=expon(x)
r=0;
for i=0:55
    r=r+x^i/factorial(i);
end
e=abs((r-exp(1.5))/exp(1.5));