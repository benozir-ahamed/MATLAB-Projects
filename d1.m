clc;clear;close all;
% Define the augmented matrix [A | b]
A = [10 2 1 9; 
     2 20 -2 -44; 
     -2 3 10 22]
A(1,:) = A(1,:) / A(1,1);
A(2,:) = A(2,:) - A(2,1) * A(1,:);
A(3,:) = A(3,:) - A(3,1) * A(1,:);

A(2,:) = A(2,:) / A(2,2);
A(3,:) = A(3,:) - A(3,2) * A(2,:);

A(3,:) = A(3,:) / A(3,3);
A
%Making elements above the pivot zero
A(1,:) = A(1,:) - A(1,2) * A(2,:);
A(1,:) = A(1,:) - A(1,3) * A(3,:);
A(2,:) = A(2,:) - A(2,3) * A(3,:);

disp('Row Echelon Form :')
disp(A);
x = A(:,4);
disp('Solution (x, y, z):');
disp(x);
