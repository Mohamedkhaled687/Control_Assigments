% step_response_simulation.m
% This script simulates the step response of a system defined by the
% transfer function C(s)/R(s) = 4 / (s^2 + 6s + 4) for a unit step input.
% It computes performance metrics such as rise time, maximum overshoot,
% and settling time.

clc;            % Clear the command window
clear;          % Clear workspace variables
close all;      % Close all open figure windows

%% Define the Transfer Function
% Numerator and denominator of the transfer function:
% C(s)/R(s) = 4 / (s^2 + 6s + 4)
num = 4;                    % Numerator coefficient (constant gain)
den = [1 6 4];              % Denominator polynomial coefficients for s^2 + 6s + 4
sys = tf(num, den);         % Create the transfer function model

%% Simulate the Step Response
figure('Name','Unit Step Response');
step(sys, 'LineWidth',2);   % Plot the step response using a unit step input
grid on;
title('Step Response for C(s)/R(s) = 4 / (s^2 + 6s + 4)');
xlabel('Time (s)');
ylabel('System Response');

%% Compute Performance Metrics
% The stepinfo function computes several time-domain characteristics.
info = stepinfo(sys);

% Display the computed metrics:
fprintf('Rise Time: %.4f seconds\n', info.RiseTime);
fprintf('Maximum Overshoot: %.2f%%\n', info.Overshoot);
fprintf('Settling Time: %.4f seconds\n', info.SettlingTime);
