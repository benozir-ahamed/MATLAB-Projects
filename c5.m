clc;clear;close all;
x=-10:.1:10;
line(x,0)
line(0,x)
hold on
y = (x.^2 + 3*x - 10)./(x - 2);
plot(x,y, 'r')
%axis([-2 8 -30 10])
grid on