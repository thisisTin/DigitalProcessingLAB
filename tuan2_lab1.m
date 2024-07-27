% Tạo một mảng nx chứa các giá trị từ -100 đến 100
nx = -100:100;
% Khởi tạo các tín hiệu và dãy x
us1 = zeros(size(nx));
us2 = zeros(size(nx));
x = zeros(size(nx));

% Tạo tín hiệu us1 và us2
us1(nx >= 2) = 1;
us2(nx >= 12) = 1;

% Tạo dãy x bằng sự kết hợp của us1 và us2
x = us1 - us2;

% Vẽ đồ thị cho x[n]
figure(5)
subplot(6,1,1);
stem(nx,x)
axis([-20,20, -2, 2])
grid on
title('x[n]')
xlabel('n', 'fontsize', 12)
ylabel('s[n]', 'fontsize', 12)

% 2_b
% Khởi tạo các tín hiệu và dãy v
us1 = zeros(size(nx));
us2 = zeros(size(nx));
v = zeros(size(nx));

% Tạo tín hiệu us1 và us2
us1(nx >= -16) = 1;
us2(nx >= 7) = 1;

% Tạo dãy v bằng sự kết hợp của us1 và us2
v = us1 - us2;

% Vẽ đồ thị cho v[n]
subplot(6,1,2);
stem(nx,v)
axis([-20,20, -2, 2])
grid on
title('v[n]')
xlabel('n', 'fontsize', 12)
ylabel('s[n]', 'fontsize', 12)

% 2_c
% Tạo dãy y bằng tích của x và v
y = x .* v;

% Vẽ đồ thị cho y[n]
subplot(6,1,3);
stem(nx,y)
axis([-20,20, -2, 2])
grid on
title('y[n]')
xlabel('n', 'fontsize', 12)
ylabel('s[n]', 'fontsize', 12)

% 2_d
% Tạo dãy r bằng tổng của x và v
r = x + v;

% Vẽ đồ thị cho r[n]
subplot(6,1,4);
stem(nx,r)
axis([-20,20, -2, 2])
grid on
title('r[n]')
xlabel('n', 'fontsize', 12)
ylabel('s[n]', 'fontsize', 12)

% 2_e
% Tạo các tín hiệu và dãy x1, v1, và s
x1 = zeros(size(nx));
nt1 = -98:102;
us1 = zeros(size(nt1));
us2 = zeros(size(nt1));
v1 = zeros(size(nx));

% Tạo tín hiệu us1 và us2
us1(nt1 >= 2) = 1;
us2(nt1 >= 12) = 1;

% Tạo dãy x1 bằng sự kết hợp của us1 và us2
x1 = us1 - us2;

% Tạo một mảng nt2 và các tín hiệu us1 và us2 khác
nt2 = -102:98;
us1 = zeros(size(nt2));
us2 = zeros(size(nt2));

% Tạo tín hiệu us1 và us2
us1(nt2 >= -16) = 1;
us2(nt2 >= 7) = 1;

% Tạo dãy v1 bằng sự kết hợp của us1 và us2
v1 = us1 - us2;

% Tạo dãy s bằng tích của x1 và v1
s = x1 .* v1;

% Vẽ đồ thị cho s[n]
subplot(6,1,5);
stem(nx,s)
axis([-20,20, -2, 2])
grid on
title('s[n]')
xlabel('n', 'fontsize', 12)
ylabel('s[n]', 'fontsize', 12)

% 2_f
% Tạo các tín hiệu và dãy y1, x2, v2, y2, x3, và v3
y1 = zeros(size(nx));
ny1 = -101:99;
us1 = zeros(size(ny1));
us2 = zeros(size(ny1));
x2 = zeros(size(nx));
v2 = zeros(size(nx));

% Tạo tín hiệu us1 và us2
us1(ny1 >= 2) = 1;
us2(ny1 >= 12) = 1;

% Tạo dãy x2 bằng sự kết hợp của us1 và us2
x2 = us1 - us2;

% Khởi tạo các tín hiệu và dãy us1, us2, và v2
us1 = zeros(size(ny1));
us2 = zeros(size(ny1));

% Tạo tín hiệu us1 và us2
us1(ny1 >= -16) = 1;
us2(ny1 >= 7) = 1;

% Tạo dãy v2 bằng sự kết hợp của us1 và us2
v2 = us1 - us2;

% Tạo dãy y1 bằng tích của x2 và v2
y1 = x2 .* v2;

% Tạo mảng ny2 và các tín hiệu và dãy khác
ny2 = -99:101;
y2 = zeros(size(nx));
x3 = zeros(size(nx));
v3 = zeros(size(nx));
us1 = zeros(size(ny2));
us2 = zeros(size(ny2));

% Tạo tín hiệu us1 và us2
us1(ny2 >= 2) = 1;
us2(ny2 >= 12) = 1;

% Tạo dãy x3 bằng sự kết hợp của us1 và us2
x3 = us1 - us2;

% Khởi tạo các tín hiệu và dãy us1, us2, và v3
us1 = zeros(size(ny2));
us2 = zeros(size(ny2));

% Tạo tín hiệu us1 và us2
us1(ny2 >= -16) = 1;
us2(ny2 >= 7) = 1;

% Tạo dãy v3 bằng sự kết hợp của us1 và us2
v3 = us1 - us2;

% Tạo dãy y2 bằng tích của x3 và v3
y2 = x3 .* v3;

% Tạo dãy t bằng tổng của y1 và y2
t = y1 + y2;

% Vẽ đồ thị cho t[n]
subplot(6,1,6);
stem(nx,t)
axis([-20,20, -2, 2])
grid on
title('t[n]')
xlabel('n', 'fontsize', 12)
ylabel('s[n]', 'fontsize', 12)

% Xóa biến tạm thời
clear
