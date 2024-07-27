clc
clear all
close all

x = [1 2 3 4 5 5 4 3 2 1];
xn = 0:9;
[x1n, nx1] = shift(x , 1, xn);
%Shift
[x_s, n_xs] = shift(x1n , 1, nx1);
%Reverse
[x_sr, n_xsr] = reverse(x_s, n_xs);
%scale nên viết lại hàm scale sử dụng hàm x2n
x2 = [1 3 5 4 2];
nx2 = -5:-1;

%------------Convolve
[yy, nyy] = convolve(x2, nx2, x, xn);

% find index to shift
start_indice = nx2(1) + nx1(1);
shift_amount = start_indice - nyy(1);
[ff, nff] = shift(yy,shift_amount,nyy);

%-----------------

figure(1)
stem(nyy,yy)
grid on
title('y[n]')
xlabel('n', 'fontsize', 12)
ylabel('y[n]', 'fontsize', 12)

figure(2)
stem(nff, ff)
grid on
title('y[n]')
xlabel('n', 'fontsize', 12)
ylabel('y[n]', 'fontsize', 12)