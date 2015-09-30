P = 0.5;    % Probability of getitng a male (or female) child
M = 1;      % At least M male children
K = 2;      % Number of children
N = 1e6;    % Size of sample space

% Let X be a KxN matrix to represent families with K children
X = rand(K, N) < P;

Count_M = sum(sum(X) >= M);

P = Count_M / N;

disp(P);
