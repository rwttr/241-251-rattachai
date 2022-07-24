% Plot discrete convolution sum 2

%% specify time frame [n0:t_step:n1]
n0 = 0;
n1 = 20;

t_step = 1;

% create time sequence t
n = linspace(n0, n1, n1+1);

%% Define Signal u[n] ; n_max = n1
u = ones(size(n));

figure();
stem(n,u);
title("u[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-n1 n1])

%% Define Signal h[n]
% h[n] = u[n]

% array n ; n(1) = 0

h = u;

figure();
stem(n,h);
title("h[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-n1 n1])

%% Define Signal x[n]
% x[n] = a^n u[n] ;  0<a<1

a = 0.8;

x = (a.^n).*u;


figure();
stem(n,x);
title("x[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-n1 n1])

%% Generate Signals y[n] = x[n]*h[n]

y = conv(x,h);

n_conv = linspace( n0, length(y)-1, length(y) );

figure();
stem(n_conv, y);
title("x[n]*h[n]")
xlabel('n');
xlim([-n1 length(y)])


%% subplot

figure();
subplot(3,1,1);
stem(n,h);
title("h[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-n1 length(n)])

subplot(3,1,2);
stem(n,x);
title("x[n]")
xlabel('n');
ylim([0 2.5]);
xlim([-n1 length(n)])

subplot(3,1,3);
stem(n_conv, y);
title("x[n]*h[n]")
xlabel('n');
xlim([-n1 length(n)])

%% Lab work
%{
 let a signal q[n] = -u[n] (negative unit step)  

show a plot of y= x*q

%}

%% Assignment in report : answer this question
%{
why the length of convolution (y in this example) has a length that not equals to x or h, specifically
what is relationship between the length of the non-zero convolution result and the length of input signals, x and h.
%}




