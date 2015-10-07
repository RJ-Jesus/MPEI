N = 1e6;

X = randn(1, N) * 2 + 14;
P = sum(X > 12 & X < 16) / N;

disp(P);
