P = 0.5;    % Probability of heads (and tails)
H = 20;     % # Heads
K = 20;     % # Tosses
N = 1e7;    % Size of sample space

% Let X be a KxN matrix to represent K tosses on a N sample space
X = rand(K, N) < P;

Count_H = sum(sum(X) == H);

P_20H = Count_H / N;

disp(P_20H);


% Set X to represent the next toss
X = rand(1, N) < P;

Count_H = sum(X);

P_1moreH = Count_H / N;

disp(P_1moreH);
