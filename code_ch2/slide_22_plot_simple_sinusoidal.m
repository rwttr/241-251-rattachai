% Plotting simple sinusoidal waveform

%% specify time frame [t0:t_step:t1]
t0 = 0;
t1 = 2*pi;
t_step = 1000;

% create time sequence t
t = linspace(t0, t1, t_step);

%% sinusoidal wave 
w = 0.7*pi;
phi = 0;

y = sin(w*t + phi);

plot(t,y)

%% Multiple plots : adjusting w
figure(); 
% or gcf(); % get current figure;

w_1 = 1;
w_2 = 2;

xt_1 = sin(w_1*t+phi);
xt_2 = sin(w_2*t+phi);

plot(t,xt_1);
hold();
plot(t,xt_2);

% set x-tick (x-axis values labeling)
set(gca,'XTick',[0 pi 2*pi]);

% period 2*pi / w
T_1 = 2*pi / w_1;
T_2 = 2*pi / w_2;

%% LAB Assignment
%{ 

plot 2 sinusoidal waves by 
    -first wave has angular frequency = 1 rad per second and 1.00 peak amplitude
    
    -second wave 
        has angular frequency  = half of 1st wave 
        2.00 peak amplitude 
        and phase shift = pi rad

    - plot with time frame are in a range of -pi to pi

%}
