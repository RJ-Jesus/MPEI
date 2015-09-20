N = 2;  % Number of heads
T = 3;  % Number of tosses
S = 1e6;  % Number of samples

X = sum(round(rand(T, S)));  % Get all the samples and sum them
X = sum(X == N);  % Get all the positive cases

P = X / S;
fprintf('%f\n', P);
