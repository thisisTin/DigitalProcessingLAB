%% Clear Screen
clc
clear all
close all
%Bai4
%Nhap cac gia tri dau vao:

%do dai x[n] toi thieu la 6
%do dai h[n] toi thieu la 5

nh=0:15
nx=0:15
xn=input("Enter an X array[a b c ... ]:")
hn=input("Enter an H array[a b c ... ]:")
[y, ny] = convolve(hn, nh, xn, nx)
[s, n] = shift(y, 5, ny)
stem(n,s,'-r')
title('y[n]=x[n]*h[n]')
xlabel('n', 'fontsize', 12)
ylabel('y[n]', 'fontsize', 12)