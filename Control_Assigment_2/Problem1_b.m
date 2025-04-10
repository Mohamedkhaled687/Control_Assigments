% ramp_response_analysis.m

clc;            
clear;       
close all;      

%% Define the Transfer Function
num = 1;                 % Numerator coefficient
den = [1 0.1];           % Denominator coefficients (s + 0.1)
sys = tf(num, den);      % Create a transfer function model

%% Create Ramp Input and Simulate Response
t = 0:0.1:100;    % Define the time vector from 0 to 100 seconds with a step of 0.1 seconds
r = t;            % Define the ramp input, r(t) = t

% Use lsim to simulate the system's response to the ramp input
y_ramp = lsim(sys, r, t);

%% Plot the Ramp Input and System Output
figure('Name','Ramp Response');
plot(t, r, 'r--','LineWidth',2);    % Plot ramp input as a red dashed line
hold on;
plot(t, y_ramp, 'b','LineWidth',2);   % Plot system output as a blue solid line
hold off;
xlabel('Time (s)');
ylabel('Amplitude');
title('Response to Ramp Input, r(t) = t');
legend('Input (Ramp)','Output','Location','Best');
grid on;

%% Compute Steady-State Error
e = r - y_ramp;      % Compute error as the difference between input and output
e_ss = e(end);       % Approximate steady-state error at the final time value
disp('--- Ramp Response Information ---');
fprintf('Estimated steady-state error (as t -> large): %.4f\n', e_ss);
