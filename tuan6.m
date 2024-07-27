scrcl
% Clear existing variables
clearvars
% Sampling s(a)
% = (1-cos(wc*t))/(pi*wc*t.^2)
wc = 300 * pi; % Define the cutoff frequency
ot = wc / (2 * pi);
k = 1;
time = -3 * pi / wc: pi / 10000: 3 * pi / wc; % Define time range
for t = time
 if t == 0
 sat(k) = wc / (2 * pi);
 else
 sat(k) = (1 - cos(wc * t)) / (pi * wc * t.^2);
 end
 k = k + 1;
end
% Plot the result
figure(1)
plot(time, sat, 'linewidth', 2)
title({'The Inverse CTFT of \it Sa(j\Omega)\rm\bf', 'The Analog Signal, \itS_a(t)'})
grid on
xlabel('Time', 'fontname', 'Comic Sans MS', 'fontsize', 14)
ylabel('Amplitude', 'fontname', 'Comic Sans MS', 'fontsize', 14)
% Clear variables
clearvars
% 1.b.i) f_s = Nyquist rate = 2*f
wc = 300 * pi; % Define the cutoff frequency
ot = wc / (2 * pi);
fsn = 900; % Define the sampling frequency
T1 = 1 / fsn; % Define the sampling period
k = 1;
nTime = -30:30; % Define time range
for n = nTime
 if n == 0
 sat1(k) = wc / (2 * pi);
 else
 sat1(k) = (1 - cos(wc * n * T1)) / (pi * wc * (n * T1).^2);
 end
 k = k + 1;
end
% Plot the result
figure(2)
subplot(3,1,1)
stem(nTime, sat1, '-r', 'filled', 'linewidth', 2)
title({'The Finite Length Sequence, \it S_a[n] \rm \bf'; 'At \itf\rm\bf = 600Hz'}, 'fontname', 'Comic Sans MS', 'fontsize', 14)
grid on
xlabel('Time', 'fontname', 'Comic Sans MS', 'fontsize', 14)
ylabel('Amplitude', 'fontname', 'Comic Sans MS', 'fontsize', 14)
% Calculate DFT and plot
[H1, w1] = freqz(sat1, 1, 512);
sag1 = abs(H1);
rad2deg = 180 / pi;
angleH1 = wrapTo180(unwrap(angle(H1)) * rad2deg);
subplot(3,1,2)
plot(w1, sag1, '-r', 'linewidth', 2)
grid on
title({'The DFT, \it S_a[\Omega] \rm \bf'; 'At \itf\rm\bf = 600Hz'}, 'fontname', 'Comic Sans MS','fontsize', 14)
xlabel('\omega', 'fontname', 'Comic Sans MS', 'fontsize', 14)
ylabel('Amplitude', 'fontname', 'Comic Sans MS', 'fontsize', 14)
subplot(3,1,3)
plot(w1, angleH1, '-r', 'linewidth', 2)
grid on
title({'The Angle of, \it S_a[\Omega] \rm \bf'; 'At \itf\rm\bf = 600Hz'}, 'fontname', 'Comic Sans MS', 'fontsize', 14)
xlabel('\omega', 'fontname', 'Comic Sans MS', 'fontsize', 14)
ylabel('Amplitude', 'fontname', 'Comic Sans MS', 'fontsize', 14)
% Set the figure position
set(gcf, 'Position', [100, 100, 800, 500])