%{
 Plot frequency response : 1st order recursive discrete time filter
%}
%% specify x-axis (frequency range)
% w range from [-2*pi 2*pi]
n0 = -2*pi;
n1 = 2*pi;

t_step = 1000;

% create time sequence t
w = linspace(n0, n1, t_step);
%% filter frequency response function: 
e = exp(1);

H = 0.5*(1+ e^(-1i.*w));


re_h_lpf = real(H_lpf);
re_h_hpf = real(H_hpf);

%% Plots

figure();
plot(w, re_h_lpf);
title("H_{lpf}, a = 0.6")
xlabel('\omega');
xlim([-pi-1 pi+1])
ylim([0 3]);

figure();
plot(w, re_h_hpf);
title("H_{hpf}, a = -0.6")
xlabel('\omega');
xlim([-pi-1 pi+1])
ylim([0 3]);


%% Subplot

figure();
subplot(1,2,1);
plot(w, re_h_lpf);
title("H_{lpf}, a = 0.6")
xlabel('\omega (rad)');
xlim([-pi-1 pi+1])
ylim([0 3]);

subplot(1,2,2);
plot(w, re_h_hpf);
title("H_{hpf}, a = -0.6")
xlabel('\omega (rad)');
xlim([-pi-1 pi+1])
ylim([0 3]);

%% Using matlab function to plot frequency response

% y[n] = 0.5x[n] - 0.5x[n-1]
% [a]y = [b]x 

a = 1; b = [0.5 -0.5];

% plot frequncy response of this filter
freqz(b,a)




