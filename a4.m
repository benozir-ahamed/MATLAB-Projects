clc;clear;close all;
x=-5:0.01:5;
line(x,0)
line(0,x)
hold on
y1=x.^4-6*x.^3+12*x.^2-10*x+3;
plot(x,y1,'k')
y2=4*x.^3-18*x.^2+24*x-10;
plot(x,y2,'r')
y3=12*x.^2-36*x+24;
plot(x,y3,'g')
grid  on         
axis([0 3.5 -4 4])