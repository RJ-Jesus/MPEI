%%%%%
%   Events
%
% A := "At least a target was hit twice"
%%%%%

N = 5;    % # of darts
M = 100;   % # of targets
S = 1e5;  % Size of sample space

%   Let X be a NxS matrix to represent the action of throwing N darts.
% Each element of said matrix will represent the target (out of M
% possibilities) which was hit
X = floor(rand(N, S) * M) + 1;

Count_A = 0;

for i = 1:S
    Y = zeros(N, 1);
    for j = 1:N
        Y(j) = sum(X(:, i) == X(j, i));
    end
    if ismember(2, Y)
        Count_A = Count_A + 1;
    end
end

P_A = Count_A / S;
disp(P_A);
