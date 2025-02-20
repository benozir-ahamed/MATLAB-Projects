clc; clear; close all;
A = [0 0 4; 5 2 6;1 5 2;2 8 4;2 3 5]
[m, n] = size(A);
for i = 1:min(m,n)
    if A(i,i) == 0
        A([i,i+1],:)=A([i+1,i], : );
   end
    if A(i,i) ~= 0
     A(i,:) = A(i,:) / A(i,i);  
    end
    
   for j = i+1:m
       A(j,:) = A(j,:) - A(j,i) * A(i,:);
    end
end
A
rank_A = sum(any(A, 2));
disp(['Rank(A) = ', num2str(rank_A)]);
