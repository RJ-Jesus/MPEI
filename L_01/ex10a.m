%%%%%
%   Events
%
% A := "No target is hit 2 or more times"
%%%%%

N = 5;    % # of darts
M = 10;   % # of targets
S = 1e5;  % Size of sample space

%   Let X be a NxS matrix to represent the action of throwing N darts.
% Each element of said matrix will represent the target (out of M
% possibilities) which was hit
X = sort(floor(rand(N, S) * M) + 1);

Count_A = 0;

for i = 1:S
    if length(X(:, i)) == length(unique(X(:, i)))
        Count_A = Count_A + 1;
    end
end

P_A = Count_A / S;
disp(P_A);