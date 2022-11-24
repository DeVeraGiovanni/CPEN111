# To clear all variables and figures
clc
clf
clear all
close all


# b.
nature = imread("nature.jpg");

# Display and naming the figure window
figure(1, "name", "Image of the Nature"): imshow(nature);

whos nature; # To show the size of the original image of nature

nature_grayscale = rgb2gray(nature); # Convert true color to grayscale

# Display and naming the figure window
figure(2, "name", "Image of the Nature in Grayscale"): imshow(nature_grayscale);


whos nature_grayscale; # To show the size of the nature in grayscale.

# c.

# To intensify the red color
nature_red = nature;

# Set Blue and Green to 0
nature_red(:,:,2)=0;
nature_red(:,:,3)=0;

# To intensify the green color
nature_green = nature;

# Set Red and Blue to 0
nature_green(:,:,1)=0;
nature_green(:,:,3)=0;

# To intensify the blue color
nature_blue = nature;

# Set Red and Green to 0
nature_blue(:,:,1)=0;
nature_blue(:,:,2)=0;

# Display and naming the figure window
figure(3, "name", "RGB of Nature"),

# Plotting the original image and Red, Blue, Green image of nature
subplot(2,2,1),imshow(nature),title('original image');
subplot(2,2,2),imshow(nature_red),title('Nature in Red');
subplot(2,2,3),imshow(nature_green),title('Nature in Green');
subplot(2,2,4),imshow(nature_blue),title('Nature in Blue');


# d.

# Converting all the images to PNG file.
imwrite(nature, "nature_PNG.png");
imwrite(nature_grayscale, "nature_in_grayscale_in_PNG.png");
imwrite(nature_red, "nature_red.png");
imwrite(nature_green, "nature_green.png");
imwrite(nature_blue, "nature_blue.png");



