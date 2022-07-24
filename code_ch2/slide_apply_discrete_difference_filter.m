%% Applying the filter to data

% create time sequence n for 501 samples from 0 to 500
n = linspace(0, 500, 500+1);

% assume a signal x 
x = 0.5*sin(0.04.*n) + (0.25.*randn(size(n)));

plot(n,x)

%% Example : HPF

%{
Difference Equation 
 y[n] = 0.5x[n] - 0.5x[n-1]
 in a form of [a]y = [b]x 
%}
a = 1; b = [0.5 -0.5];

% apply filter
y_hpf = filter(b,a,x);

% plot the generated signal x against filtered x
figure();
plot(n,x);
title("x with HPF")
xlabel('\omega (rad)');
hold();
plot(n,y_hpf);

%% Subplot HPF
figure();
subplot(2,1,1);
plot(n,x);
title("x")
xlabel('\omega (rad)');

subplot(2,1,2);
plot(n, y_hpf);
title("x filtered")
xlabel('\omega (rad)');
%% Example : LPF

%{
Difference Equation 
 y[n] = 0.85x[n] + 0.75x[n-1] + 0.75x[n-2] + x[n-3] + x[n-4] 
 [a]y = [b]x 
%}

a = 4.4; b = [0.75 0.8 0.85 1 1];
% 4.35 for weighting the signal = sum(b)

% apply filter
y_lpf = filter(b,a,x);

figure();
plot(n, x);
title("x with LPF")
xlabel('\omega (rad)');
hold();
plot(n,y_lpf);

%% Subplot LPF
figure();
subplot(2,1,1);
plot(n,x);
title("x")
xlabel('\omega (rad)');

subplot(2,1,2);
plot(n, y_lpf);
title("x filtered")
xlabel('\omega (rad)');
