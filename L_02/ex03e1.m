N = 4;        # Number of trials
P_H_T = 0.5;  # Probability of Heads/Tails

#####
# X - Number of heads
# P - P(Xi) - Probability of Xi, 0 <= i <= N
#####

X = 0:N;
P = arrayfun(@(k)(nchoosek(N, k) * P_H_T^k * (1 - P_H_T)^(N - k)), X);

P_ge2 = sum(P(find(X >= 2)));
disp(P_ge2);
