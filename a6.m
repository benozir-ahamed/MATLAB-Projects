clc;clear;close all;
x=-10:0.01:10;
line(x,0)
line(0,x)
hold on
y1=x.^3-3*x.^2-x+3;
plot(x,y1,'k')
y2=x.^3-6*x.^2+11*x-6;
plot(x,y2,'r')
grid  on         
axis([-1.5 3.5 -3.5 3.5])