img = im2double(imread('swan.pgm'));
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
                s(i,j) = f0+f1(i);%+f2(j);%+f0;
            end
        end
       