clear all;
clc;
a=0:pi/15:2*pi;
y1=sin(a);
y2=cos(a);
z=a*180/pi;
disp('***************************************************')
fprintf('%10s %10s %10s %10s\n','a( deg)','a(rad)','sin(a)','cos(a)');
disp('***************************************************')
table=[z;a;y1;y2]; % displays in table format
fprintf('%10.4f %10.4f %10.4f %10.4f\n',table);
disp('***************************************************');