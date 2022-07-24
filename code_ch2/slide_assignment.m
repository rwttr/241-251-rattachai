%% Assignment / LAB work
%{ 
show a magnitude of frequency response plots of these non-recursive filters

1)   y[n] = 0.5x[n] + 0.4x[n-1] + 0.1x[n-2]
2)   y[n] = 0.5x[n] - 0.4x[n-1] - 0.1x[n-2]

assume signal x is:
x = 0.7*sin(0.02*pi*n) + sin(0.1*n)+ 0.1*sin(rand()*n);

which n is a sequence:
n = linspace(0, 100, 100+1);

work:
A) apply the filter in 1) to the signal x and plot the result against original x
B) apply the filter in 2) to the signal x and plot the result against original x
C) apply both filters 1) and 2) to the signal x and plot the result against original x
D) Quantize the amplitude of the results of C) into 5 levels


calculate the overall error between filtered signal and the original signal in A), B), C) and D)

%}