clc
clear all
close all

% 2.b.i: Thiết kế FIR filter cho y2bi với các tham số đã cho
wu = pi/4;
wl = 0;
Ni = 15;
[y2bi, ny2bi] = FIRdesign(wl, wu, Ni);
% Tính biểu đồ tần số và magnitude của y2bi
[y2b1, w1] = freqz(y2bi, 1, ny2bi);
% Hiển thị biểu đồ của y2bi và biểu đồ tần số và magnitude
figure(7)
subplot(3,2,1)
stem(ny2bi,y2bi)
axis([min(ny2bi), max(ny2bi), min(y2bi), max(y2bi)]);
grid on
title('y through FIR filter with N = 15', 'fontname', 'Comic Sans MS', 'fontsize', 14)
xlabel('n', 'fontname', 'Comic Sans MS', 'fontsize', 14)
ylabel('y[n]', 'fontname', 'Comic Sans MS', 'fontsize', 14)
subplot(3,2,2)
plot(w1/pi,20*log10(abs(y2b1)))
axis([0, 2, -30, 30])
grid on
title('Frequency & Magnitude', 'fontname', 'Comic Sans MS', 'fontsize', 14)
xlabel('Frequency (\times\pi rad/sample)', 'fontname', 'Comic Sans MS', 'fontsize', 14)
ylabel('magnitude(dB)', 'fontname', 'Comic Sans MS', 'fontsize', 14)
% 2.b.ii: Thiết kế FIR filter cho y2bii với N = 33
Nii = 33;
[y2bii, ny2bii] = FIRdesign(wl, wu, Nii);
% Tính biểu đồ tần số và magnitude của y2bii
[y2b2, w2] = freqz(y2bii, 1, ny2bii);
% Hiển thị biểu đồ của y2bii và biểu đồ tần số và magnitude
subplot(3,2,3)
stem(ny2bii,y2bii)
axis([min(ny2bii), max(ny2bii), min(y2bii), max(y2bii)]);
grid on
title('y through FIR filter with N = 33', 'fontname', 'Comic Sans MS', 'fontsize', 14)
xlabel('n', 'fontname', 'Comic Sans MS', 'fontsize', 14)
ylabel('y[n]', 'fontname', 'Comic Sans MS', 'fontsize', 14)
subplot(3,2,4)
plot(w2/pi,20*log10(abs(y2b2)))
axis([0, 2, -50, 30])
grid on
title('Frequency & Magnitude', 'fontname', 'Comic Sans MS', 'fontsize', 14)
xlabel('Frequency (\times\pi rad/sample)', 'fontname', 'Comic Sans MS', 'fontsize', 14)
ylabel('magnitude(dB)', 'fontname', 'Comic Sans MS', 'fontsize', 14)
% 2.b.iii: Thiết kế FIR filter cho y2biii với N = 99
Niii = 99;
[y2biii, ny2biii] = FIRdesign(wl, wu, Niii);
% Tính biểu đồ tần số và magnitude của y2biii
[y2b3, w3] = freqz(y2biii, 1, ny2biii);
% Hiển thị biểu đồ của y2biii và biểu đồ tần số và magnitude
subplot(3,2,5)
stem(ny2biii,y2biii)
axis([min(ny2biii), max(ny2biii), min(y2biii), max(y2biii)]);
grid on
title('y through FIR filter with N = 99', 'fontname', 'Comic Sans MS', 'fontsize', 14)
xlabel('n', 'fontname', 'Comic Sans MS', 'fontsize', 14)
ylabel('y[n]', 'fontname', 'Comic Sans MS', 'fontsize', 14)
subplot(3,2,6)
plot(w3/pi,20*log10(abs(y2b3)))
axis([0, 2, -40, 30])
grid on
title('Frequency & Magnitude', 'fontname', 'Comic Sans MS', 'fontsize', 14)
xlabel('Frequency (\times\pi rad/sample)', 'fontname', 'Comic Sans MS', 'fontsize', 14)
ylabel('magnitude(dB)', 'fontname', 'Comic Sans MS', 'fontsize', 14)