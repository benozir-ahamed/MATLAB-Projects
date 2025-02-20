clc;clear;close all;
x=-5:.01:5;
line(x,0)
line(0,x)
hold on
y=2*x.^4-15*x.^3+35*x.^2-30*x+8;
plot(x,y,'r')
grid on
axis([0 5 -12 4])