clear all;clc;
V=[5, 17,-3,8,0,-1,12,15,20,-6, 6,4,-7,16]
a=length(V);
for i=1:a
    if (V(i)>0) & (mod(V(i),3)==0 | mod(V(i),5)==0)
        V(i)=2*V(i);
    elseif V(i)<0 & V(i)>-5
        V(i)=V(i)^3;
    end
end
V