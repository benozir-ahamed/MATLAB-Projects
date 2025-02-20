clc; clear;
A = [1, 2, 3];
R = [1 1 0;
     0 1 1;  
     0 0 1]; 
 
n = length(A);
isReflexive = all(diag(R) == 1);
isSymmetric = isequal(R, R');
isAntiSymmetric = all(all(~(R & R') | eye(n)));
isTransitive = all(all((R * R) <= R));

disp('Relation Matrix (R):');
disp(R);
disp('Properties of the Relation:');
disp(['Reflexive:      ', mat2str(isReflexive)]);
disp(['Symmetric:      ', mat2str(isSymmetric)]);
disp(['Anti-Symmetric: ', mat2str(isAntiSymmetric)]);
disp(['Transitive:     ', mat2str(isTransitive)]);
