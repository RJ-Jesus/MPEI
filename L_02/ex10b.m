N = 1e6;
X = rand(1, N) * 10;
P_s = sum(X > 7) / N;
P_t = (10 - 7) / 10;
disp(P_t);
disp(P_s);
