N = 4;        # Number of trials
P_H_T = 0.5;  # Probability of Heads/Tails

X = 0:N;
P = arrayfun(@(k)(nchoosek(N, k) * P_H_T^k * (1 - P_H_T)^(N - k)), X);

E = sum(X.*P);
Var = sum((X - E) .^ 2 .* P);

disp(E);
disp(Var);
