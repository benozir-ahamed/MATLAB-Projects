clc;
clear;

% Given matrix
A = [-9 2 6; 5 0 -3; -16 4 11]
disp('Determinant using MATLAB det function:');
disp(det(A));

% Check if the first element is zero and swap rows if necessary
row_swap_count = 0;
if A(1,1) == 0
    % Check if row 2 has a nonzero element in column 1
    if A(2,1) ~= 0
        A([1, 2], :) = A([2, 1], :); % Swap row 1 and row 2
    % Else check row 3
    elseif A(3,1) ~= 0
        A([1, 3], :) = A([3, 1], :); % Swap row 1 and row 3
    else
        disp('No nonzero pivot found in column 1');
    end
    row_swap_count = row_swap_count + 1; % Keep track of row swaps
end

% Row operations to convert into upper triangular form
for i = 2:3 A(2,:);
    factor = A(i,1) / A(1,1);
    A(i,:) = A(i,:) - factor * A(1,:);
end
if A(2,2) == 0
    A([2, 3], :) = A([3, 2], :); % Keep track of row swaps
     row_swap_count = row_swap_count + 1;
end
for i = 3:3
    factor = A(i,2) / A(2,2);
    A(i,:) = A(i,:) - factor * A(2,:);
end

% Calculate determinant
detter = A(1,1) * A(2,2) * A(3,3);

% Adjust sign if row swaps occurred
if mod(row_swap_count, 2) == 1
    detter = -detter;
end

% Display results
disp('Transformed Matrix A:');
disp(A);
disp('Determinant using manual calculation:');
disp(detter);



