N = 1e6;

X = randn(1, N) * 2 + 14;
P = sum(X >= 10) / N;

disp(P);
