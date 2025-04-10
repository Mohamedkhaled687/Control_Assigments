fc = 100000;
fm = 100;
ts = 0.1/fc;
T = 2 / fm;

df = 1 / T; % df is set to 1/T since T is the overall observation time
fs = 1/ts;

N = ceil(T / ts);
t = 0 : ts : (N - 1) * ts;  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot m(t)
m = sin(2 * pi * fm * t);
figure; 
plot(t, m);
xlabel('time');
ylabel('m(t)');
grid on;

%%%%%%%%%% Define the frequency vector %%%%%%%%
if rem(N, 2) == 0
    % Even N: frequency vector from -fs/2 to fs/2 - df
    f = -0.5 * fs : df : 0.5 * fs - df;
else
    % Odd N: frequency vector adjusted to center around zero
    f = -0.5 * fs + 0.5 * df : df : 0.5 * fs - 0.5 * df;
end

% Plot the magnitude of M(f)
M = fftshift(fft(m)) / N;
figure; 
plot(f, abs(M));
xlabel('freq');
ylabel('M(f)');
grid on;

%%%%%%%%%%%%% Define and plot the carrier %%%%%%%%%%%
c = cos(2 * pi * fc * t);
figure;
plot(t, c);
xlabel('time');
ylabel('c(t)');
grid on;

C = fftshift(fft(c)) / N;
figure;
plot(f, abs(C));
xlabel('freq');
ylabel('C(f)');
grid on;


%%%%%%%%%%%%%%%%%%%%%

s = m .* c;
figure;
plot(t, s);
xlabel('time');
ylabel('s(t)');
grid on;


S = fftshift(fft(s)) / N;
figure;
plot(f, abs(S));
xlabel('freq');
ylabel('S(f)');
grid on;