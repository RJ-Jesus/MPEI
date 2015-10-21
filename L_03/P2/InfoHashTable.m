N = 1000;
alpha = 0.8;

S = loadHashTable(N, alpha);

X = [];
P = [];

for i = 1:length(S)
	v = S(i);
	if ~length(find(X == v))
		X = [X v];
		P = [P sum(S == v) / length(S)];
	endif
endfor

[X, idx] = sort(X);
P = P(idx);

disp('X: ');
disp(X);
disp('P: ');
disp(P);
clf, bar(X, P);

E_X = 0;
for i = 1:length(X)
	E_X = E_X + X(i) * P(i);
endfor
disp('E(X): ');
disp(E_X);

Var_X = 0;
for i = 1:length(X)
	Var_X = Var_X + X(i)^2 * P(i);
endfor
Var_X = Var_X - E_X^2;
disp('Var(X): ');
disp(Var_X);
