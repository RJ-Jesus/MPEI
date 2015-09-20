T = 5;  % Number of samples picked
S = 1e6;  % Number of trials to be run

X = sum(rand(T, S) < 0.3);

hist(X, 0:T)
