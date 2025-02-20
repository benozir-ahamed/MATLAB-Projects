clc; clear; close all;
B = [4 1 3;2 1 2;1 0 -1]
disp(inv(B));
% Augmented Matrix [B | I]
I = eye(3);
A = [B I];
[m, n] = size(A);
disp('Augmented Matrix [B | I]');
disp(A);
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
disp('Row Reduced Echelon Form:');
disp(A);
inv_B = A(:,4:6);
disp('Inverse of B:');
disp(inv_B);
