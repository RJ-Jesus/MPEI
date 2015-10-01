X = [5, 50, 100];       # Sample space
P = [90, 9, 1] / 100;   # Probabilities

subplot(1, 2, 1);

bar(X, P);
xlabel('X');
ylabel('P(X)');

subplot(1, 2, 2);

bar(X, cumsum(P));
xlabel('X');
ylabel('Cumsum P(X)');
