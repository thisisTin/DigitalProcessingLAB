x=[1 2 3 4 5 6 7 8 9 10 11 12]
xn=0:11
figure
subplot(2,2,1)
stem(xn,x)
%%Unit Step
x0=0
xu=[1 1 1 1 1 1 1 1 1 1 1 1 ]
subplot(2,2,2)
stem(xn,xu)
title('Unit Step')
%%Dirac Delta
xd=[1 0 0 0 0 0 0 0 0 0 0 0]
subplot(2,2,3)
stem(xn,xd)
title('Dirac Delta')    