clc;clear;close all;
x=-5:.01:5;
line(x,0)
line(0,x)
hold on
y=x.^5-5*x.^3+4*x;
plot(x,y,'r')
grid on
axis([-2.5 2.5 -4.5 4.5])