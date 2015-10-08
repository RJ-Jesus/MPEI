p = 0.3;
n = 10;
N = 1e6;

X = sum(rand(n, N) < p);

hist(X);
