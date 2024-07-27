clc
clear all
close all

wu = 800;
wl = 0;
Ni = 45;
[y2bi, ny2bi] = FIRdesign(wl, wu, Ni)

stem(ny2bi,y2bi)