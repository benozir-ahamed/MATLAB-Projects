clc;clear;
% Given matrix
A = [-9 2 6; 5 0 -3; -16 4 11]
det(A)
% Store the scaling factor for determinant correction
scale_factor = 1;

% Making first column below pivot zero
factor1 = A(2,1)/A(1,1);
A(2,:) = A(2,:) - factor1 * A(1,:);

factor2 = A(3,1)/A(1,1);
A(3,:) = A(3,:) - factor2 * A(1,:);


% Making second column below pivot zero
factor3 = A(3,2)/A(2,2);
A(3,:) = A(3,:) - factor3 * A(2,:);

% Calculate determinant
% The determinant is the product of the diagonal elements
det_A = prod(diag(A)) * scale_factor;

% Display results
disp('Matrix after making first column zero below pivot:');
disp(A);
disp('Determinant of A:');
disp(det_A);
