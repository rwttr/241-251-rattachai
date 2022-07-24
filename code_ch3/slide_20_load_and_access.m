% Load RGB image and Histogram plot
pwd()
%% load image and plot histogram
test_img = imread("mandrill.png");
% print array size : row*col*channel
size(test_img)
% show histogram
% the histogram is a combination of brightness of all channel 
histogram(test_img)
imhist(test_img)

%% Access image array By Channel
% red channel
test_img_redch = test_img(:,:,1);
size(test_img_redch)
histogram(test_img_redch)
imhist(test_img_redch)

% green channel
test_img_greench = test_img(:,:,2);
histogram(test_img_greench)
imhist(test_img_greench)

% blue channel
test_img_bluech = test_img(:,:,3);
histogram(test_img_bluech)
imhist(test_img_bluech)

%% show partial channel in color
bluer_mandirll = test_img; % copy source image

% assign bias ; turn off red, green channel
bluer_mandirll(:,:,1) = zeros( size(bluer_mandirll,[1 2]) );
bluer_mandirll(:,:,2) = zeros( size(bluer_mandirll,[1 2]) );

% note : zeros( size(bluer_mandirll,[1 2]) ); 
% create array of zeros whose size equal to the size of bluer_mandrill and 1st and 2nd dimensions

imshow(bluer_mandirll)

% assign bias ; dimmish red 0.25x, green channel 0.75x
bluer_mandirll = test_img; 
bluer_mandirll(:,:,1) = 0.25.*bluer_mandirll(:,:,1);
bluer_mandirll(:,:,2) = 0.75.*bluer_mandirll(:,:,2);

imshow(bluer_mandirll)

%%
