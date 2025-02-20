clc;
n=1:5
x=(2*n-1).*(2*n+1).*(2*n+3)
Sum=sum(x);
disp(['Sum of the series=',num2str(Sum)])

x1=n.*(n+1).^2
Sum=sum(x1);
disp(['Sum of the series=',num2str(Sum)])

x2=(2*n-1)./2.^(n-1)
Sum=sum(x2);
disp(['Sum of the series=',num2str(Sum)])

x3=(2*n-1)./((n.*(n+1).*(n+2)))
Sum=sum(x3);
disp(['Sum of the series=',num2str(Sum)])

x4=n./factorial(n+1)
Sum=sum(x4);
disp(['Sum of the series=',num2str(Sum)])