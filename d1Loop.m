clc; clear; close all;
% Define the augmented matrix [A | b]
A = [10 2 1 9; 
     2 20 -2 -44; 
     -2 3 10 22]
[m, n] = size(A);
 for i = 1:min(m,n)
   if A(i,i) == 0
        A([i,i+1],:) = A([i+1,i], :);
    end
    if A(i,i) ~= 0
        A(i,:) = A(i,:) / A(i,i);  
    end
    for j = i+1:m
        A(j,:) = A(j,:) - A(j,i) * A(i,:);
    end
 end
A
for i = 1:m-1 
    for j = i+1:m 
        A(i,:) = A(i,:) - A(i,j) * A(j,:);
    end
end
disp('Row Echelon Form :')
disp(A);
x = A(:,n);  
disp('Solution (x, y, z):');
disp(x);
