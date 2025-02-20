clc;
%When the quantities are not equal
n=1:5
AM=sum(n)./5;
GM=prod(n).^(1./5);
HM=5./sum(1./n);
disp(['AM=',num2str(AM)])
disp(['GM=',num2str(GM)])
disp(['HM=',num2str(HM)])

%When the quantities are not equal
m=[5 5 5 5 5]
AM=sum(m)./5;
GM=prod(m).^(1./5);
HM=5./sum(1./m);
disp(['AM=',num2str(AM)])
disp(['GM=',num2str(GM)])
disp(['HM=',num2str(HM)])


