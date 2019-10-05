clear all;close all;clc;
pic = imread('Tweety.jpg');
pic2=pic;
[n,m,k] = size(pic);
for i = 1:n
    for j = 1:m
        if pic(i,j,1)>230 & pic(i,j,2)>230 & pic(i,j,3)<50
            pic(i,j,:) = [204;50;153];
        end
    end
end
imshowpair(pic2,pic,'montage');