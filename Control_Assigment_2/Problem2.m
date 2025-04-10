% Problem2.m
% This script simulates the step response of a system defined by
% C(s)/R(s) = 4 / (s^2 + 6s + 4) for a unit step input.
% It computes the rise time, maximum overshoot, and settling time.

clc;            % Clear the command window
clear;          % Clear workspace variables
close all;      % Close all open figure windows

%% Define the Transfer Function
num = 4;                 % Numerator coefficient
den = [1 6 4];           % Denominator coefficients for s^2 + 6s + 4
sys = tf(num, den);      % Create the transfer function model

%% Simulate the Step Response
figure('Name','Unit Step Response');
step(sys);   % Plot the step response using the default style
grid on;
title('Step Response for C(s)/R(s) = 4 / (s^2 + 6s + 4)');
xlabel('Time (s)');
ylabel('System Response');


%% Compute Performance Metrics
% The stepinfo function calculates time-domain characteristics.
info = stepinfo(sys);

% Display the computed metrics:
fprintf('Rise Time: %.4f seconds\n', info.RiseTime);
fprintf('Maximum Overshoot: %.2f%%\n', info.Overshoot);
fprintf('Settling Time: %.4f seconds\n', info.SettlingTime);
