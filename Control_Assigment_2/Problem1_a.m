%  C(s)/R(s) = 1 / (s + 0.1)
clc;            % Clear command window
clear;          % Clear workspace
close all;      % Close all figure windows

%% Define the Transfer Function
num = 1;                 % Numerator
den = [1 0.1];           % Denominator [s + 0.1]
sys = tf(num, den);      % Create a transfer function model

%% (a) Step Response
figure('Name','(a) Step Response');
step(sys);
title('Step Response of 1/(s + 0.1)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Compute and display step-response characteristics
stepInfo = stepinfo(sys);
disp('--- (a) Step Response Information ---');
disp(stepInfo);
fprintf('Settling Time (approx.): %.4f s\n', stepInfo.SettlingTime);