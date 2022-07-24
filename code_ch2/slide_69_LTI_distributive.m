% Plot discrete convolution sum

%% specify time frame [n0:t_step:n1]
n0 = 0;
n1 = 10;

t_step = 1;

% create time sequence t
n = linspace(n0, n1, n1+1);

%% Define Signal u[n] ; n_max = n1
u = ones(size(n));

figure();
stem(n,u);
title("u[n]")
xlabel('n');
ylim([0 2]);
xlim([-n1 n1])

%% Assume h_1[n]

h = zeros(size(n));
h(2) = 0.25;
h(3) = 0.5;
h(4) = 0.75;
h(5) = 1;

h_1 = h;

figure();
stem(n,h_1);
title("h_1[n]")
xlabel('n');
ylim([0 2]);
xlim([-n1 n1])

%% Assume h_2[n]

h = zeros(size(n));
h(2) = 1;
h(3) = 0.75;
h(4) = 0.5;
h(5) = 0.25;

h_2 = h;

figure();
stem(n,h_2);
title("h_2[n]")
xlabel('n');
ylim([0 2]);
xlim([-n1 n1])

%% Define Signal x[n]
% x[n] = u[n] ;  0<a<1

x = u;

figure();
stem(n,x);
title("x[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-n1 n1])

%% Generate Signals y_1[n] = x[n]*h_1[n]

y_1 = conv(x,h_1);

n_conv = linspace( n0, length(y_1)-1, length(y_1) );

figure();
stem(n_conv, y_1);
title("y_1 = x[n]*h_1[n]")
xlabel('n');
xlim([-n1 length(y_1)])
ylim([0 3]);

%% Generate Signals y_2[n] = x[n]*h_2[n]

y_2 = conv(x,h_2);

n_conv = linspace( n0, length(y_2)-1, length(y_2) );

figure();
stem(n_conv, y_2);
title("y_2 = x[n]*h_2[n]")
xlabel('n');
xlim([-n1 length(y_2)])
ylim([0 3]);

%% Generate signal y_left = y_1 + y_2
y_left = y_1+y_2;

figure();
stem(n_conv, y_left);
title("y_{left} = y_1 + y_2 = ")
xlabel('n');
xlim([-n1 length(y_left)])
ylim([0 6]);

%% Generate signal y_right = x* (h_1 + h_2);
 
y_right = conv(x, h_1+h_2);

figure();
stem(n_conv, y_right);
title("y_{right} = x[n]*(h_1[n] + h_2[n])")
xlabel('n');
xlim([-n1 length(y_right)])
ylim([0 6]);

%% Quick Check for Equality
sum(y_right - y_left)


%% subplot

figure();
subplot(5,1,1);
title("x[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-n1 length(n)])

subplot(5,1,2);
stem(n,x);
stem(n,h_1);
title("h_1[n]")
xlabel('n');
ylim([0 2]);
xlim([-n1 n1])

subplot(5,1,3);
stem(n,h_2);
title("h_2[n]")
xlabel('n');
ylim([0 2]);
xlim([-n1 n1])

subplot(5,1,4);
stem(n_conv, y_left);
title("y_{left} = y_1 + y_2 = ")
xlabel('n');
xlim([-n1 length(y_left)])
ylim([0 6]);

subplot(5,1,5);
stem(n_conv, y_right);
title("y_{right} = x[n]*(h_1[n] + h_2[n])")
xlabel('n');
xlim([-n1 length(y_right)])
ylim([0 6]);
