% Signal Quantization Example

%% create time sequence n for 501 samples from 0 to 500
n = linspace(0, 100, 100+1);

% assume a signal x 
x = 0.5*sin(0.1.*n) + (0.25.*randn(size(n)));

plot(n,x)

%% Quantize the signal x

max_level = max(x);
min_level = min(x);
n_step = 5;        % amplitide resolution

% init zeros  
x_q = zeros(size(x));

for i = 1:length(x_q)
    x_q(i) = quantizeX(x(i), n_step, max_level, min_level);
end

figure();
plot(n,x)
title("x")
xlabel('n');
hold();
plot(n,x_q);

%% Subplot

figure();
subplot(2,1,1);
plot(n,x);
title("x")
xlabel('n');

subplot(2,1,2);
plot(n, x_q);
title("x quantized")
xlabel('n');
