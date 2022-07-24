% Plot 4 harmonic-related signals of a sinusoidal signal

%% specify time frame [t0:t_step:t1]
t0 = 0;
t1 = 2*pi;
t_step = 1000;

% create time sequence t
t = linspace(t0, t1, t_step);

%% Generate Signals
% fundamental period T_0 (sec)
T_0 = 2*pi;

% fundamental frequency
w_0 = 2*pi/T_0;

% k-th harmonic signal is integer k times of w_0
w_k1 = 1* w_0;
w_k2 = -2* w_0;
w_k3 = -3* w_0;
w_k4 = 4* w_0;
w_k5 = 5* w_0;

x = sin(w_0 *t);
x_k1 = sin(w_k1 *t);
x_k2 = sin(w_k2 *t);
x_k3 = sin(w_k3 *t);
x_k4 = sin(w_k4 *t);
x_k5 = sin(w_k5 *t);

%% Plot

plot(t,x); 
hold;
plot(t,x_k1);
plot(t,x_k2);
plot(t,x_k3);
plot(t,x_k4);
plot(t,x_k5);

%% Plot: for better visualization, let's weight amplitude of harmonic signals
% .* is broadcast operator ; apply to each element in array
plot(t,x); 
hold;
plot(t, 0.9 .* x_k1);
plot(t, 0.8 .* x_k2);
plot(t, 0.4 .* x_k3);
plot(t, 0.2 .* x_k4);
plot(t, 0.1 .* x_k5);

