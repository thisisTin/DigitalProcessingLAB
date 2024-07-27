clc
clear all
close all
b=[1 0 0];
a=[1 -2.5 1];
syms z
hZ=1/1-2.5*(z^-1)+z^-2
hz=zplane(b,a)
r=roots(a)

t=abs(r)
%b
if(t<1)
    disp(' he on dinh');
else
    disp(' He khong on dinh');
end
%c
[r,p, k]=residuez(b,a)
disp('He so phan ra: ');
disp(r);
disp('Nghiem phan ra: ');
disp(p);
disp('He so thanh phan: ');
disp(k);
%d
hN=iztrans(hZ)
disp('kroneckerDelta là Dirac Delta')
syms n
syms x
hN=kroneckerDelta(n - 2, 0) - (5*kroneckerDelta(n - 1, 0))/2 + kroneckerDelta(n, 0)
yN= x(n-2,0)-2.5*x(n-1,0)+x(n,0)
Hn=[1,2.5,1]
n=x
a1=polyval(Hn,0)
a2=polyval(Hn,-1)
a3=polyval(Hn,2)


