% MATLAB code to determine time constant and static gain for a system with impulse input
clear all; close all; clc;

% Define the system transfer function G(s) = 1/(s+0.1)
num = 1;
den = [1 0.1];
sys = tf(num, den);

% Display the transfer function
disp('System Transfer Function:');
sys

% Calculate the time constant from the pole
p = pole(sys);
time_constant = -1/p;
fprintf('Time constant = %.2f seconds\n', time_constant);

% Calculate the static gain (DC gain)
static_gain = dcgain(sys);
fprintf('Static gain = %.2f\n', static_gain);

% Calculate the impulse response analytically
% For a system with transfer function 1/(s+0.1), the impulse response is:
% h(t) = e^(-0.1t) for t ≥ 0

% Generate the impulse response
t = 0:0.1:50;
impulse_response = exp(-0.1*t);

% Also get MATLAB's built-in impulse response calculation
[y_impulse, t_impulse] = impulse(sys, t);

% Plot the impulse response
figure;
plot(t, impulse_response, 'b', 'LineWidth', 1.5);
hold on;
plot(t_impulse, y_impulse, 'r--', 'LineWidth', 1);
grid on;
title('Impulse Response');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Analytical: e^{-0.1t}', 'MATLAB impulse function');

% Mark the time constant on the plot
y_at_tau = exp(-1); % Response at t = time constant should be e^-1 ≈ 0.368 of initial value
plot([time_constant time_constant], [0 y_at_tau], 'g--', 'LineWidth', 1.5);
plot([0 time_constant], [y_at_tau y_at_tau], 'g--', 'LineWidth', 1.5);
text(time_constant + 1, y_at_tau, ['Time constant = ', num2str(time_constant), ' s']);

% Display the analytical impulse response equation
text(20, 0.8, 'h(t) = e^{-0.1t}', 'FontSize', 12);