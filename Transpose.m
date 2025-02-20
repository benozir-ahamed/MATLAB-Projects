clc;clear;
% Given matrix
A = [-9 2 6; 5 0 -3; -16 4 11]
for i=1:3
    for j=1:3
        B(i,j)=A(j,i);
    end
end
disp(B)
   