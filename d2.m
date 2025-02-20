clc;clear;close all;
% Define the augmented matrix [A | b]
A = [2 -2 0 0 0;
     1  2 1 0 0;
     0  1 -2 1 0;
     0  0 -1 2 1]

% Perform Gaussian elimination manually
A(1,:) = A(1,:) / A(1,1);
A(2,:) = A(2,:) - A(2,1) * A(1,:);
A(3,:) = A(3,:) - A(3,1) * A(1,:);
A(4,:) = A(4,:) - A(4,1) * A(1,:);

A(2,:) = A(2,:) / A(2,2);
A(3,:) = A(3,:) - A(3,2) * A(2,:);
A(4,:) = A(4,:) - A(4,2) * A(2,:);

A(3,:) = A(3,:) / A(3,3);
A(4,:) = A(4,:) - A(4,3) * A(3,:);

A(4,:) = A(4,:) / A(4,4);
A
%Making elements above the pivot zero
A(1,:) = A(1,:) - A(1,2) * A(2,:);
A(1,:) = A(1,:) - A(1,3) * A(3,:);
A(1,:) = A(1,:) - A(1,4) * A(4,:);
A(2,:) = A(2,:) - A(2,3) * A(3,:);
A(2,:) = A(2,:) - A(2,4) * A(4,:);
A(3,:) = A(3,:) - A(3,4) * A(4,:);

disp('Row Echelon Form :');
disp(A);
x = A(:,5); 
disp('Solution (x, y, z, u):');
disp(x);

