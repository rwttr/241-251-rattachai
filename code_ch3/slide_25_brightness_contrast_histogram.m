%% load image and plot histogram

img_rgb = imread("mandrill.png");

% print array size : row*col*channel
size(img_rgb)

% show histogram
% the histogram is a combination of brightness of all channel 
figure();
histogram(img_rgb)

figure();
imhist(img_rgb)

%% histogram by RGB channels


%% Convert RGB image to HSV image
img_hsv = rgb2hsv(img_rgb);

img_hue = img_hsv(:,:,1);
img_sat = img_hsv(:,:,2);
img_val = img_hsv(:,:,3);

%% histogram by HSV channels

figure();
imhist(img_hue);

figure();
imhist(img_sat);

figure();
imhist(img_val);

%% Visualize image by heatmap
figure();
imagesc(img_val);
title("val-channel in HSV image")
colormap("gray")


%% Brightness Adjustment
% by offseting pixel value ( + constant)

% bias term : b
b = 0.2;

% brightness adj eq
% output = input + b

img_A = img_val;
img_B = img_A + b;

figure();
imshow(img_A)
title("img A")

figure(); 
imshow(img_B);
title("img B");

figure();
imshowpair(img_A, img_B,'montage',Scaling="none")

%% Contrast & Brightness Adjustment (Linear Transformation)

% gain term : a
a = 1.75;
b = -0.5;
% contrast & brightness adj eq
% output = a*input + b

img_C = (a.*img_A)+b;

figure();
imshow(img_C);

% test with other a,b values
figure();
imshowpair(img_A, img_C,'montage',Scaling="none")

%% Assignment 
% show the histogram of original image and contrast & brightness adjusted images



