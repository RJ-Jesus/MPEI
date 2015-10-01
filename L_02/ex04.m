N = 5;
P_Defect = 0.3;
S = 1e6;

X = 0:N;
T = sum(rand(N, S) < P_Defect);
P = arrayfun(@(i)(length(find(T == i)) / S), X);

subplot(1, 2, 1);
bar(X, P);
xlabel('X');
ylabel('P(X)');

subplot(1, 2, 2);
bar(X, cumsum(P));
xlabel('X');
ylabel('Cumsum P(X)');
