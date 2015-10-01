N = 5;
P_Defect = 0.3;
S = 1e6;

X = 0:N;
T = sum(rand(N, S) < P_Defect);
P = arrayfun(@(i)(length(find(T == i)) / S), X);

P_le2 = sum(P(find(X <= 2)));
disp(P_le2);
