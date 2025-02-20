clc;clear;close all;
x=-100:.01:100;
line(x,0)
line(0,x)
hold on
y=sin(x)-cos(x)+1;
plot(x,y,'r')
grid on
axis([-10 10 -5 5])