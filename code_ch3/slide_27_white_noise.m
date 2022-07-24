% white noise (Gaussian Noise) & additive noise model

% tips: clear workspace 'clear'
% clear cmd screen 'clc'

%% load image
img_rgb = imread("mandrill.png");

% print array size : row*col*channel
size(img_rgb)

img_A = rgb2gray(img_rgb);


%% generate white noise with mean = 0, variance = 1 (sigma = 0)
img_rand = randn(size(img_A));

upper_bound = 1;
lower_bound = 0;

% rescale pixel values to [0,1]
img_A_rescaled = rescale(img_A, lower_bound, upper_bound);
img_rand_rescaled = rescale(img_rand, lower_bound, upper_bound);

% another white noise 
img_rand2 = (5 * img_rand) + 1;
img_rand2_rescaled = rescale(img_rand2, lower_bound, upper_bound);

%% add noise to image

img_C = img_A_rescaled + img_rand_rescaled; 
figure(); 
imshow(img_C);

% intensity weight by sum-to-one factors
img_D = (0.5 .* img_A_rescaled) + (0.5 .* img_rand_rescaled);
% img_D = img_A_rescaled + 0.5*img_rand;
figure();
imshow(img_D)

%% MATLAB lib
% use function 'imnoise', there is a lot more than white noise
