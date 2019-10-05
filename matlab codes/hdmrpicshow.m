function [d, guess] = hdmrpicshow(training,guessNum)
training = sort(training);
for n = 1:40%training
    sumpic = 0;
    r=1;
    for m = training
        str = strcat('/faces/s',int2str(n),'/',int2str(m),'.pgm');
        img(:,:,r)=im2double(imread(str));
        img3(:,:,n,r)= img(:,:,r);
        sumpic = sumpic + img(:,:,r);
        r=r+1;
    end
    img = sumpic/length(training);
    [n1,n2] = size(img);
    f0 = sum(img(:))/(n1*n2);
    for i =1:n1
        f1(i) = sum(img(i,:))/n2-f0;
    end
    for i =1:n2
        f2(i) = sum(img(:,i))/n1-f0;
    end
    for i = 1:n1
        for j = 1:n2
            pic(i,j,n) = f0+f1(i)+f2(j);%+f0;
        end
    end
end
for n = 1:40 %test
    r=1;
    for m =setdiff(1:10,training)
        str = strcat('/faces/s',int2str(n),'/',int2str(m),'.pgm');
        img2(:,:,n,r) = im2double(imread(str));
        img = im2double(imread(str));
        [n1,n2] = size(img);
        f0 = sum(img(:))/(n1*n2);
        for i =1:n1
            f1(i) = sum(img(i,:))/n2-f0;
        end
        for i =1:n2
            f2(i) = sum(img(:,i))/n1-f0;
        end
        
        for i = 1:n1
            for j = 1:n2
                s(i,j,n,r) = f0+f1(i)+f2(j);%+f0;
            end
        end
        for k = 1:40
            error(n,r,k) = immse(pic(:,:,k),s(:,:,n,r));
        end
        for l = 1:guessNum
            a = error(n,r,:);
            b=sort(a(:));
            row = find(error(n,r,:)==b(l));
            guess(n,r,l) = row; % min error = guess
        end
        figure;
        subplot(1,5,r);imshowpair(img3(:,:,guess(n,r,1),r),img2(:,:,n,r),'montage');
        r=r+1;
    end
end
len = length(setdiff(1:10,training));

for i =1:40 %correctness check
    for j = 1:len
        for l = 1:guessNum
            if guess(i,j,l)==i
                result(i,j) = 1;
                break;
            end
            result(i,j)=0;
        end
    end
end

d = sum(sum(result))/size(result,1)/size(result,2);
%fprintf('accuracy: %.1f%%\n',d*100);