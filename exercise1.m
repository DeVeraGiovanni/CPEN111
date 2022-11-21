close all;
clear all;
clc;

# Calling the filename only because the image is already in the same directory
# with the exercie1.m file
fruits_image = imread('fruits.png');

figure(1, 'name', 'Original image'), imshow(fruits_image)

# 1. To show the information about the image. The image is a PNG file.

imfinfo 'fruits.png'

# 2.

pkg load image # importing the package

fruits_resize = imresize(fruits_image, 0.25); # resize the image by 1/4 of the original.
imwrite(fruits_resize, 'fruits2.png'); # Saving a new image
whos fruits_resize # show new image size
figure(2, 'name', 'Reduce spacial resolution'), imshow(fruits_resize)

# 3.

fruits_rgb2hsv = rgb2hsv(fruits_resize); # converting the original image to HSV
imwrite(fruits_rgb2hsv, 'fruits3.png');
# Showing the image with proper title for the window
figure(3, 'name', 'Converting an image to HSV'), imshow(fruits_rgb2hsv)
