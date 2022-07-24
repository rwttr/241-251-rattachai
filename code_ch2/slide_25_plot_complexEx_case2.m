% Plot complex exponential signal

%% specify time frame [t0:t_step:t1]
t0 = 0;
t1 = 4*pi;
t_step = t1*1000;

% create time sequence t
t = linspace(t0, t1, t_step);

%% Generate Signals
% fundamental period T_0 (sec)
T_0 = pi;

% fundamental frequency
w_0 = 2*pi/T_0;

% Euler's number 
e = exp(1);

% x(t) = e ^ (j * w_0 * t)
x = e .^ (1i .* w_0 .* t);

% real part of x
re_x = real(x);

% imaginart part of x
im_x = imag(x);

%% Plot in separate figure

figure();
plot(t,re_x);
xlabel('t');
ylabel('real');

figure();
plot(t,im_x);
xlabel('t');
ylabel('imaginary');

figure();
plot(t,re_x);
hold();
plot(t,im_x);
xlabel('t');


%% subplot

figure();
subplot(2,1,1);
plot(t,re_x);
xlabel('t');
ylabel('real');

subplot(2,1,2);
plot(t,im_x);
xlabel('t');
ylabel('imaginary');

%% 3D Plot

% now we have 3-axis data : t, re_x, im_x
% plot point in 3d space -> scatter3(X,Y,Z,S,C) parameter order spcify axis to plot
% for quick manual type help scatter3 in command window

scatter3(t,re_x,im_x, 1)

% add label to graph
xlabel('t');
ylabel('real') 
zlabel('imaginary') 


