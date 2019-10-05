close all;clear all; clc;
trainingSetAll = nchoosek(1:10,5);
trainingSet = datasample(trainingSetAll,10);
n = length(trainingSet);
for nGuess = 1:3
    sumAcc=0;
    for i=1:n
        sumAcc = sumAcc + hdmrAcc(trainingSet(i,:), nGuess);
    end
    avgAcc(nGuess) = sumAcc/n;
    fprintf('avg acc %d: = %.2f%%\n\n',nGuess,100*avgAcc(nGuess));
end
[1:3; 100*avgAcc]'