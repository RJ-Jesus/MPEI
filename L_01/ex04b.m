T = 5;  % Number of samples examined
S = 1e6;  % Number of trials to run

X = sum(rand(T, S) < 0.3);  % Get all the trials and sum them
P = 0;
for i = 0:2
    P = P + sum(X == i);  % Get all the positive cases
end

P = P / S;
fprintf('%f\n', P);
