clc;clear;close all;
x=-5:0.01:5;
line(x,0)
line(0,x)
hold on
y=6*x.^3-11*x.^2-3*x+2;
plot(x,y,'k')
y1=2*x.^3-3*x.^2-11*x+6;
plot(x,y1,'r')
grid minor         
axis([-2.5 3.5 -12 12])