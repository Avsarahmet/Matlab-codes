function [r]= givePoint(a,b,c)
r=interp1(a,b,c,'spline');
