clc; clear; close all;
A = [0 1 2; 3 1 0; 1 1 -1]

% Row Echelon Form 
A([1,2],:) = A([2,1],:);  

A(1,:) = A(1,:) / A(1,1);

A(2,:) = A(2,:) - A(2,1) * A(1,:);
A(3,:) = A(3,:) - A(3,1) * A(1,:);


A(2,:) = A(2,:) / A(2,2);


A(3,:) = A(3,:) - A(3,2) * A(2,:);

A(3,:) = A(3,:) / A(3,3);
disp('Echelon Form of A:')
disp(A);

rank_A = sum(any(A, 2));
disp(['Rank(A) = ', num2str(rank_A)]);


