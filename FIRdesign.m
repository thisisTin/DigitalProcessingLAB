%2.a
%Step1
function [y, ny] = FIRdesign(wl, wu, N)
%Step2
for n = 1:2*N
h(n) = (sin(wu*n)-sin(wl*n))/(pi*n);
end
%Step3
n = [1:2*N];
%Step4
[h_r, n_r] = reverse(h, n);
[h_comp, h_r_comp, n_comp] = compsig(h, n, h_r, n_r);
h_comp = h_comp + h_r_comp;
%Step5
for n = 1:N
box(n) = 1;
end
%Step6
n_box = -(N-1)/2:(N-1)/2;
%Step7
[y, ny] = convolve(h_comp, n_comp, box, n_box);
end