clear
close all
clc
warning( 'off', 'MATLAB:xlswrite:AddSheet' ) ;

%% 1
fileName = 'img2';
imgRGB = imread([fileName, '.jpg']);
imgGrayscale = rgb2gray(imgRGB);
img2xl(string([fileName, '.xlsx']), imgRGB);
img2xl(string([fileName, 'Grayscale.xlsx']), imgGrayscale);

%% 2
fileName = 'img2';
imgGrayscale = excel2image([fileName, 'Grayscale.xlsx']);
imgRGB = excel2image([fileName, '.xlsx']);

subplot(121)
imshow(imgGrayscale)
subplot(122)
imshow(imgRGB)

%%
warning( 'on', 'MATLAB:xlswrite:AddSheet' ) ;
