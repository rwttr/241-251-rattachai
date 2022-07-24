% Plotting Energy function of sinusoidal signal

%% specify time frame [t0:t_step:t1]
t0 = 0;
t1 = 2*pi;
t_step = 1000;

% create time sequence t
t = linspace(t0, t1, t_step);

%% Signal and its corresponding energy
% source signal
x = sin(2*t);

% energy of signal x
ex = x.^2;

plot(t,x); 
hold;
plot(t,ex);

%% area with x-axis

% absolute of source signal, neglecting signed values
area_x  = sum(abs(x));
display(area_x);

area_ex = sum(abs(ex));
display(area_ex);
