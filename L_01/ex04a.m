N = 3;  % Number of defective pieces
T = 5;  % Number of samples examined
S = 1e6;  % Number of trials to run

X = sum(rand(T, S) < 0.3);  % Get all the trials and sum them
X = sum(X == N);  % Get all the positive cases

P = X / S;
fprintf('%f\n', P);
