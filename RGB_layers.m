clc; clear; close all;

rgbImage = imread('lena.jpg');

% Extracting color channels
redChannel = rgbImage(:,:,1);
greenChannel = rgbImage(:,:,2);
blueChannel = rgbImage(:,:,3);

% Create a black channel.
allBlack = zeros(size(rgbImage, 1), size(rgbImage, 2), 'uint8');

just_red = cat(3, redChannel, allBlack, allBlack);
just_green = cat(3, allBlack, greenChannel, allBlack);
just_blue = cat(3, allBlack, allBlack, blueChannel);

subplot(2, 2, 1);
imshow(rgbImage);
title('Original RGB Image');
subplot(2, 2, 2);
imshow(just_red);
title('Red Channel in Red');
subplot(2, 2, 3);
imshow(just_green)
title('Green Channel in Green');
subplot(2, 2, 4);
imshow(just_blue);
title('Blue Channel in Blue');