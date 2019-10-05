img = imread('swan.pgm');
img2 = histeq(img);
imshowpair(img,img2,'montage');
help imhisteq