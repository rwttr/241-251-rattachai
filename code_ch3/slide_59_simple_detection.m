% Demo simple object (ball) detection
%% Load the image
img = imread("orangeball_humanoid.jpg");

% display img size
disp(size(img))

imshow(img)

%% Convert image color-space from RGB to HSV
% decouping color information from brightness

img_hsv = rgb2hsv(img);

% hue-channel
img_h = img_hsv(:,:,1);

% Visualize hue-channel image using heat-map
imagesc(img_h);

%% reference Hue-color wheel

r = linspace(0,1,10);
theta = linspace(0, 2*pi, 360);
[rg, thg] = meshgrid(r,theta);
[x,y] = pol2cart(thg,rg);
pcolor(x,y,thg);
colormap(hsv);
shading flat;
polaraxes
%axis equal;

%% Threshold orange color

% create a binary mask
% a hue in a range of 0-0.1 or 0.9-0 is set to one, others go zeros
% theshold values

th_ornage_cw = 0.1;
th_orange_ccw = 0.9;


% blank image whose size equals img_hue
[img_height, img_width] = size(img_h);
orange_mask_v1 = zeros(size(img_h));
orange_mask_v2 = zeros(size(img_h));

% travel through all element in img_h and check the value in range
% set 1 if in range

% row,col indexing version
for i = 1:img_height
    for j = 1: img_width
        if img_h(i,j) < th_ornage_cw || img_h(i,j) > th_orange_ccw
            orange_mask_v1(i,j) = 1;
        end
    end
end

figure();
imshow(orange_mask_v1);
title("orange mask v1");

% linear indexing version
for i = 1:numel(img_h)
    if img_h(i) < th_ornage_cw || img_h(i) > th_orange_ccw
        orange_mask_v2(i) = 1;
    end
end

figure();
imshow(orange_mask_v2);
title("orange mask v2");

%% orange threshold produce dirty masks
% A green mask for background selection

th_green_min = 0.1;
th_green_max = 0.9;

green_mask = zeros(img_height,img_width);

for i = 1:numel(img_h)
    if img_h(i) < th_green_max && img_h(i) > th_green_min
        green_mask(i) = 1;
    end
end

figure();
imshow(green_mask);
title("green mask");

%% Pre-defined Mask as a prior knowledge (our demo image is not simple enough)
% row 230th and more are the green surface

pre_def_mask = zeros(size(img_h));
pre_def_mask(230:end,:) = 1;

figure();
imshow(pre_def_mask);
title("pre defined mask");

%% Combine Mask for ROI

roi_mask = orange_mask_v2.*pre_def_mask;
figure();
imshow(roi_mask)

figure();
imshowpair(roi_mask,img)
