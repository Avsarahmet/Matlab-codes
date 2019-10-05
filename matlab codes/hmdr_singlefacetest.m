clear all;close all;clc;
trainingSet = [1,2,3,4,5];
guessNum = 1;
[acc guess] = hdmrpicshow(trainingSet,guessNum);
% for i=1:40
%     for j=1:5
%     guess(i,j) = guess(i,j)==i;
%     end
% end
%guess
