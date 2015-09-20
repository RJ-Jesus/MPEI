N = 6;  % Number of heads
T = 15;  % Number of tosses
S = 1e6;  % Number of samples

X = sum(round(rand(T, S)));  % Get all the samples and sum them
X = sum(X == N);  % Get all the positive cases

P = X / S;
fprintf('%f\n', P);
