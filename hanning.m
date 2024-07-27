function hanning
n=1;
for i = -(N-1)/2:(N-1)/2
hanning(n)=0.5+0.5*cos(2*pi*i/(N-1));
n = n+1;
end
n = [-(N-1)/2: (N-1)/2];
figure
plot(n,hanning,'-r')
title('Hanning')

end