% Định nghĩa dãy thời gian nx và tín hiệu x
nx = 0:11;
x = [0 1 2 3 2 1 0 -1 -2 -3 -2 -1];
% 1_a_i: Tạo tín hiệu s1 bằng cách sử dụng dãy thời gian ns1 và tín hiệu x
% Tạo hình vẽ và hiển thị tín hiệu x
figure(1)
subplot(2,2,1)
stem(nx,x)
axis([-15,15, -4, 4])
grid on
title('x[n]')
xlabel('n', 'fontsize', 12)
ylabel('s[n]', 'fontsize', 12)
ns1 = 0:11;
s1 = x;