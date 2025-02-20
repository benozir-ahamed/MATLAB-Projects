clc; clear;
T = true;  
F = false; 
p = [T, T, F, F];
q = [T, F, T, F];
conjunction = p & q;
disjunction = p | q;
neg_p = ~p;
neg_q = ~q;
conditional = ~p | q;
biconditional = (p & q) | (~p & ~q);
disp('     p     q    p^q   pvq   -p    -q   p->q  P<->q');
disp([p' q' conjunction' disjunction' neg_p' neg_q' conditional' conditional']);

