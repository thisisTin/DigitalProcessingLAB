% Function to shift the signal
function [s, n] = shift(x, N, nx)
% Shift the signal by N samples
s = x;
n = nx + N;
end