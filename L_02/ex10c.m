N = 1e6;
X = rand(1, N) * 10;
P_s = sum(X > 1 & X < 6) / N;
P_t = (6 - 1) / 10;
disp(P_t);
disp(P_s);
