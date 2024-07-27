% Function to combine two signals with different time indices
function [s1, s2, n] = compsig(x1, n1, x2, n2)
% Determine the minimum and maximum time indices
nmin = min([min(n1), min(n2)]);
nmax = max([max(n1), max(n2)]);
n = nmin:nmax; % Time indices are set.
nsize = size(n, 2);
[s1, s2] = deal(zeros(1, nsize));
x1size = size(x1, 2);
x2size = size(x2, 2);
x1first = find(n == n1(1));
x2first = find(n == n2(1));
switch (n1(1) < n1(2))
 case true
 s1(x1first : x1first + x1size - 1) = x1;
 otherwise
 s1(x1first - x1size + 1 : x1first) = fliplr(x1);
end
switch (n2(1) < n2(2))
 case true
 s2(x2first : x2first + x2size - 1) = x2;
 otherwise
 s2(x2first - x2size + 1 : x2first) = fliplr(x2);
end
end
