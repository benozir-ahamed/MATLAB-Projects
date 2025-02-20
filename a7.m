clc;clear;close all;
x=-5:.01:5;
line(x,0)
line(0,x)
hold on
y=x.^4+5*x.^2+4;
plot(x,y,'r')
grid on
axis([-2 2 -5 40])