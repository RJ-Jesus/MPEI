N = 1e6;
X = rand(1, N) * 10;
P_s = sum(X < 3) / N;
P_t = 3 / 10;
disp(P_t);
disp(P_s);
