clc;clear;close all;
x=-10:.01:10;
line(x,0)
line(0,x)
hold on
y=x.^3-18*x-35;
plot(x,y,'r')
grid on
axis([-8 8 -70 30])