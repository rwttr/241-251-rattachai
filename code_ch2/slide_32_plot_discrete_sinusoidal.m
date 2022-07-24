% Plot "Discrete-Time" complex exponential signal, pure imaginary 
% e.g., sinusoidal signal 

%% specify time frame [n0:t_step:n1]
n0 = 0;
n1 = 30;

t_step = 1;

% create time sequence t
n = linspace(n0, n1, n1+1);

%% Generate Signals - Aperiodic 
% fundamental period T_0 (sec)

% Euler's number 
e = exp(1);

% 
w_0 = 1;
C = 1;
phi = 0;

% x(t) = C * alpha^(beta*n)
% x(t) = C * e^(j * w_0 *n)

% complex exponential signal with amplitude scale factor C=1
% x_ = C .* (e .^ (1i.*w_0.*n)); 

% pure imaginary complex exponential, example. cos function
w_1 = 2*pi/12;
w_2 = 8*pi/31;
w_3 = 1/6;

x_1 = C.* cos(w_1.*n);
x_2 = C.* cos(w_2.*n);
x_3 = C.* cos(w_3.*n);

%% Plot in separate figure
% visualize as a discrete-time signal -> use stem(X,Y)

figure();
stem(n,x_1);
title("w_1 = 2\pi/12")
xlabel('n');

figure();
stem(n,x_2);
title("w_2 = 8\pi/31")
xlabel('n');

figure();
stem(n,x_3);
title("w_3 = 1/6")
xlabel('n');


%% subplot

figure();
subplot(3,1,1);
stem(n,x_1);
title("w_1 = 2\pi/12")
xlabel('n');

subplot(3,1,2);
stem(n,x_2);
title("w_2 = 8\pi/31")
xlabel('n');

subplot(3,1,3);
stem(n,x_3);
title("w_3 = 1/6")
xlabel('n');

