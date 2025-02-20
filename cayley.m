clc; clear; close all;
A = [1 0 0; 0 2 0; 0 0 3]

% Eigenvalues & Eigenvectors
[eigVec, eigVal] = eig(A);
disp('Eigenvalues of A:');
disp(diag(eigVal));
disp('Eigenvectors of A:');
disp(eigVec);

char_poly_A = poly(A);
fprintf('Characteristic Polynomial of A: \n');
fprintf('%.2fx^3 + %.2fx^2 + %.2fx + %.2f = 0\n', char_poly_A);


% P(A) 
P_A = polyvalm(char_poly_A, A);
disp('P(A) for Matrix A:');
disp(P_A); 

