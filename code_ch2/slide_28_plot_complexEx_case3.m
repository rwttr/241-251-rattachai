% Plot complex exponential signal

%% specify time frame [t0:t_step:t1]
t0 = 0;
t1 = 4*pi;
t_step = t1*1000;

% create time sequence t
t = linspace(t0, t1, t_step);

%% Generate Signals
% fundamental period T_0 (sec)
T_0 = pi;

% fundamental frequency
w_0 = 2*pi/T_0;

% Euler's number 
e = exp(1);

theta = 0;
% theta = pi/2;

% 𝐶=|𝐶|𝑒^𝑗𝜃
C = 1*e^(1i * theta);

r = -0.125;

% x(t) = |𝐶| 𝑒^𝑟𝑡 𝑒^(𝑗(𝜔_0 𝑡+𝜃))
x = abs(C)* ( e.^(r.*t) ) .* (e .^ (1i .* (w_0 .* t)+theta) );

% real part of x
re_x = real(x);

% imaginart part of x
im_x = imag(x);

%% Plot in separate figure

figure();
plot(t,re_x);
xlabel('t');
ylabel('real');

figure();
plot(t,im_x);
xlabel('t');
ylabel('imaginary');

figure();
plot(t,re_x);
hold();
plot(t,im_x);
xlabel('t');


%% subplot

figure();
subplot(2,1,1);
plot(t,re_x);
xlabel('t');
ylabel('real');

subplot(2,1,2);
plot(t,im_x);
xlabel('t');
ylabel('imaginary');

%% 3D Plot

% now we have 3-axis data : t, re_x, im_x
% plot point in 3d space -> scatter3(X,Y,Z,S,C) parameter ordering spcify axis to plot
% for quick manual type help scatter3 in command window
figure();
scatter3(t,re_x,im_x, 1)

% add label to graph
xlabel('t');
ylabel('real') 
zlabel('imaginary') 
%%

%{
Assignment, hands in a report 
-----------------------------
answer these questions

from this equation
x = abs(C)* ( e.^(r.*t) ) .* (e .^ (1i .* (w_0 .* t)+theta) );

show the plot of the signal x in subplot version 
by using these parameters for the signal x:
 1) theta = pi/2,  r = 0.25, all other values remain the same
 2) theta = -pi/2,  r = -0.25, all other values remain the same

question: what is the phase relation between re_x and im_x

%}

