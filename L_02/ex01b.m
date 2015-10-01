X = 1:6;
P = ones(1, 6) / 6;

subplot(1, 2, 1);

stem(X, P);
xlabel('X');
ylabel('P(X)');

subplot(1, 2, 2);

stem(X, cumsum(P));
xlabel('X');
ylabel('Cumsum P(X)');
