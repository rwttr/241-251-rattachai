% Demo manually plot a bounding box on an image

%% Load the image
img = imread("orangeball.jpg");

% display img size
disp(size(img))

%% obtain the top-left pixel and bottom-right pixels from plot pane

% using data tips cursor menu (top-right of image)
imshow(img);

x_1 = 216;  % top-left column
y_1 = 199;  % top-left row

x_2 = 317;  % bot-right col
y_2 = 285;  % bot-right row

%% plot a rectangle box as an overlay

% hold the current figure
hold on;

% MATLAB convension
% please use command "help rectangle" for docs

% rectangle('Position', [top-left x, top-left y, width, height]); 
rectangle('Position',[x_1, y_1, x_2-x_1, y_2-y_1],'EdgeColor','y');


