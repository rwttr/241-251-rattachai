% Plot discrete convolution sum

%% specify time frame [n0:t_step:n1]
n0 = 0;
n1 = 10;

t_step = 1;

% create time sequence t
n = linspace(n0, n1, n1+1);

%% Define Signal h[n]
% h[n]

% array n ; n(1) = 0

h = zeros(length(n),1);
h(1) = 1;
h(2) = 1;
h(3) = 1;

figure();
stem(n,h);
title("h[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-1 length(n)])

%% Define Signal x[n]

x = zeros(length(n),1);
x(1) = 0.5;
x(2) = 2;

figure();
stem(n,x);
title("x[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-1 length(n)])

%% Generate Signals y[n] = x[n]*h[n]

y = conv(x,h);

figure();
stem(n, y(1:length(n)));
title("x[n]*h[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-1 length(n)])


%% subplot

figure();
subplot(3,1,1);
stem(n,h);
title("h[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-1 length(n)])

subplot(3,1,2);
stem(n,x);
title("x[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-1 length(n)])

subplot(3,1,3);
stem(n, y(1:length(n)));
title("x[n]*h[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-1 length(n)])

