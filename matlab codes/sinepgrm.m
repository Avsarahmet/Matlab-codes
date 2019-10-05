function r = sinepgrm(x)
r=0;
i=0;
e=10;
while e>10^(-3)
    r2=r;
    r= r+(-1)^i*x^(2*i+1)/factorial(2*i+1);
    e=abs((r-r2)/r);
    i=i+1;
end