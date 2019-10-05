close all;clear all;clc;
pic = rgb2gray(imread('Tweety.jpg'));
pic2 = edge(pic,'sobel');
imshow(pic2);