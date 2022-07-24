% Plot "Discrete-Time" complex exponential signal, Real

%% specify time frame [n0:t_step:n1]
n0 = 0;
n1 = 100;

t_step = 1;

% create time sequence t
n = linspace(n0, n1, n1+1);

%% Generate Signals - Aperiodic 
% fundamental period T_0 (sec)

% Euler's number 
e = exp(1);

% real number
alpha_1 = 1.05;
alpha_2 = 0.95;
alpha_3 = -1.05;
alpha_4 = -0.95;
C = 1;

% x(t) = C * alpha^n
x_1 = C .* (alpha_1 .^ n);
x_2 = C .* (alpha_2 .^ n);
x_3 = C .* (alpha_3 .^ n);
x_4 = C .* (alpha_4 .^ n);

%% Plot in separate figure
% visualize as a discrete-time signal -> use stem(X,Y)

figure();
stem(n,x_1);
title("alpha > 1")
xlabel('n');

figure();
stem(n,x_2);
title("0 < alpha < 1")
xlabel('n');

figure();
stem(n,x_3);
title("alpha < -1")
xlabel('n');

figure();
stem(n,x_4);
title("-1 < alpha < 0")
xlabel('n');

%% subplot

figure();
subplot(4,1,1);
stem(n,x_1);
title("alpha > 1")
xlabel('n');

subplot(4,1,2);
stem(n,x_2);
title("0 < alpha < 1")
xlabel('n');

subplot(4,1,3);
stem(n,x_3);
title("alpha < -1")
xlabel('n');

subplot(4,1,4);
stem(n,x_4);
title("-1 < alpha < 0")
xlabel('n');
