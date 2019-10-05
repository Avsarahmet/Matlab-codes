clear all;clc;close all;
x=[1,2,3];
y=[1,4,8];
Sx=0;Sy=0;Sxx=0;Sxy=0;
n=3;
for i=1:n
    Sx=Sx+x(i);
    Sy=Sy+y(i);
    Sxx=Sxx+x(i).^2;
    Sxy=Sxy+x(i)*y(i);
end
m=(n*Sxy-Sy*Sx)/(n*Sxx-Sx*Sx);
b=(Sxx*Sy-Sxy*Sx)/(n*Sxx-Sx*Sx);
xp=0:0.1:3;
yp=m*xp+b;
plot(x,y,'o',xp,yp)
m
b
k=polyfit(x,y,1);
ypp=polyval(k,xp);
figure 
plot(x,y,'bo',xp,ypp)
