clc;
n=1:5;
%When a & b are not proportional
a=n+1
b=n+10
left=(sum(a.*b)).^2
right=sum(a.^2).*sum(b.^2)
%When a & b are proportional
a=2*n
b=4*n
left=(sum(a.*b)).^2
right=sum(a.^2).*sum(b.^2)
