% step_response_analysis.m
% This script defines the transfer function and performs a step response analysis.
% It plots the step response and computes characteristics such as settling time.

clc;            % Clear the Command Window
clear;          % Clear all variables from the workspace
close all;      % Close all open figure windows

%% Define the Transfer Function
num = 1;                 % Numerator coefficient (constant gain)
den = [1 0.1];           % Denominator coefficients representing (s + 0.1)
sys = tf(num, den);      % Create a transfer function model

%% Step Response Analysis
figure('Name','Step Response');
step(sys);             % Plot the step response of the system
title('Step Response of the System 1/(s + 0.1)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Compute step response characteristics
stepInfo = stepinfo(sys);  
disp('--- Step Response Information ---');
disp(stepInfo);
fprintf('Settling Time (approx.): %.4f s\n', stepInfo.SettlingTime);
