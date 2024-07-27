clc
clear all
% Biểu diễn ma trận chuyển đổi A của hệ thống
A = [0.8 0.2; 0.3 0.9]

% Tính toán các giá trị riêng của ma trận A
eigenvalues = eig(A)

% Kiểm tra xem tất cả các giá trị riêng có giá trị tuyệt đối nhỏ hơn 1 hay không
if all(abs(eigenvalues) < 1)
    disp('Hệ thống nhân quả trên miền z');
else
    disp('Hệ thống không nhân quả trên miền z');
end