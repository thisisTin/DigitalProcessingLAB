%convolution function
function [y, ny] = convolve(h, nh, x, nx)
[x_r, nx_r] = reverse (x, nx);
k = length(nh);
x_r = [x_r zeros(1,k-1)];
y = zeros(1, length(x_r));
n = 0;
while(k>=0)
y = y + x_r.*h(find(h,1,'first')+n);
k = k-1;
x_r = circshift(x_r, 1);
x_r(1) = 0;
if(find(h, 1, 'first')+n == find(h, 1, 'last'));
k = -1;
end
n = n + 1;
end
ny = min(nh)-length(x)+1:max(nh);
end