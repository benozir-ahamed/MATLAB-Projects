clc; clear;
T = true;  
F = false; 
p = [T, T, F, F];
q = [T, F, T, F];
truth_table_1=p | ~(p & q);
truth_table_2=(p | q) & ~(p | q);
truth_table_3=((p|q)&(~p|q))|(~(p|q)&~(~p|q));

disp('     p     q  Table1 Table2 Table3');
disp([p' q' truth_table_1' truth_table_2' truth_table_3']);
