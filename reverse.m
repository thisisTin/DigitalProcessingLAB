% Function to reverse the signal
function [r, k] = reverse(x, nx)
% Reverse the signal and update the time indices
r = x;
k = -nx;
end