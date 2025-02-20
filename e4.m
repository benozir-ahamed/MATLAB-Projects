clc;clear;
x=-10:.1:10;
line(x,0)
line(0,x)
hold on
y=sec(x)+log(cos(2*x));
plot(x,y, 'r')
axis([-5 5 -10 5])
grid on