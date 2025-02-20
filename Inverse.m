clc; clear; close all;
B = [4 1 3;2 1 2;1 0 -1]
inv(B)
% Augmented Matrix 
I = eye(3);
A= [B I];
disp('Step 1: Augmented Matrix [B | I]');
disp(A);
A(1,:) = A(1,:) / A(1,1);
A(2,:) = A(2,:) - A(2,1) * A(1,:);
A(3,:) = A(3,:) - A(3,1) * A(1,:);
A(2,:) = A(2,:) / A(2,2);
A(3,:) = A(3,:) - A(3,2) * A(2,:);
A(3,:) = A(3,:) / A(3,3);
A
A(1,:) = A(1,:) - A(1,2) * A(2,:);
A(1,:) = A(1,:) - A(1,3) * A(3,:);
A(2,:) = A(2,:) - A(2,3) * A(3,:);
A
inv_B = A(:,4:6);
disp('Inverse of B:');
disp(inv_B);