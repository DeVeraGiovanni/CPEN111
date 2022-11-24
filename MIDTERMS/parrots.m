# To clear all variables and figures
clc
clf
clear all
close all


# a.
parrots = imread("parrots.jpg");
figure(1, "name", "Image of a Parrots"): imshow(parrots);

# b - 533x800x3

whos parrots # To show the size of the original image of nature

# c
pkg load image; # importing a package

grayscale_parrot = rgb2gray(parrots); # changing the image to grayscale


high_intesity_parrot = imadjust(grayscale_parrot); # adjusting the image
high_intesity_parrot = rescale(high_intesity_parrot, 0, 255); # rescaling the image
high_intesity_parrot = 2 * mat2gray(high_intesity_parrot); # value of the intesity


# Display and naming the figure window
figure(2, "name", "Parrot in grayscale with high intensity"): imshow(high_intesity_parrot);


# d

parrot_grayscale = rgb2gray(parrots);  # changing the image to grayscale

# Display and naming the figure window
figure(3, "name", "Parrot in grayscale"): imshow(parrot_grayscale);

