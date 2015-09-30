%%%%%
%   Events
%
% A := "Having more than M male children"
% B := "Having at least M male children"
%%%%%

P = 0.5;    % P("Male/Female child")
M = 1;      % @Check events' definitions
K = 5;      % Number of children
N = 1e6;    % Size of sample space

% Let X be a KxN matrix to represent N families with K children
X = rand(K, N) < P;  % Pin down male children

Count_M = sum(sum(X) >= M);
Count_Mp = sum(sum(X) > M & sum(X) >= M);

P = Count_Mp / Count_M;

disp(P);
