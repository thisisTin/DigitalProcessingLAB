clc 
clear all
x= [0 2 0 1 0 2 1];
nx= -3:3;
figure(1)
subplot(2,2,1)
stem(nx,x)
axis([-5,5,-4,4])
grid on
title('x[n]')
xlabel('n','fontsize',12)
ylabel('function','fontsize',12)

figure(1)
subplot(2,2,2);
nx1= 1:3;
x2 = x(2:2:length(x));
[x2,nx1]=shift(x2,-2,nx1)
stem(nx1,x2)
axis([-5,5,-4,4])
grid on
title('x[2n]')
xlabel('n','fontsize',12)
ylabel('function','fontsize',12)
