N = 4;        # Number of trials
P_H_T = 0.5;  # Probability of Heads/Tails

X = 0:N;
P = arrayfun(@(k)(nchoosek(N, k) * P_H_T^k * (1 - P_H_T)^(N - k)), X);

subplot(1, 2, 1);
bar(X, P);
xlabel('X');
ylabel('P(X)');

subplot(1, 2, 2);
bar(X, cumsum(P));
xlabel('X');
ylabel('Cumsum P(X)');
