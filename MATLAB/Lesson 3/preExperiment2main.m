%% 1
clear; clc;

cellArray = MathematicalFunction();

disp('cellArray: ')
disp(cellArray)

%% 2

close all; clear; clc;

load('cellArray.mat');

figure('Name', 'surfc')
Plot3D(cellArray, 'surfc')

figure('Name', 'surf')
Plot3D(cellArray, 'surf')

figure('Name', 'contour')
Plot3D(cellArray, 'contour')

figure('Name', 'abc')
Plot3D(cellArray, 'abc')

%% 3

img = imread('img1.jpg');
cellArray = {img};
figure;
ShowImages(cellArray);

img1 = imread('img1.jpg');
img2 = imread('img2.jpg');
cellArray = {img1, img2};
figure;
ShowImages(cellArray);

img = imread('img4.jpeg');
cellArray = {img(:, :, 1), img(:, :, 2), img(:, :, 3)};
figure;
ShowImages(cellArray);

%% 4

fileName = 'img4.jpeg';
imgRGB = imread(fileName);
imgGray = rgb2gray(imgRGB);

width1 = -20;
width2 = 45;
width3 = 20000;

imgGL1 = GreenLineDrawer(imgRGB, width1);
imgGL2 = GreenLineDrawer(imgRGB, width2);
imgGL3 = GreenLineDrawer(imgGray, width2);
imgGL4 = GreenLineDrawer(imgRGB, width3);

subplot(221)
imshow(imgGL1)
title('imgRGB; width1 = -20')
subplot(222)
imshow(imgGL2)
title('imgRGB; width2 = 45')
subplot(223)
imshow(imgGL3)
title('imgGray; width2 = 45')
subplot(224)
imshow(imgGL4)
title('imgRGB; width3 = 20000')
