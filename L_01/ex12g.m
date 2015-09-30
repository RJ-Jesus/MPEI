%%%%%
%   Events
%
% A := "Sequence includes 1"
% B := "Sequence includes 2"
%%%%%

MAX_X = 10;

x = 1:MAX_X;
y = zeros(1, MAX_X);
seqSize = 5;

for i = 1:MAX_X
    Count_AB = 0;
    Count_B = 0;
    X = treediag(i, seqSize);
    for j = 1:length(X(:, 1))
        if length(unique(X(j, :))) ~= length(X(j, :))
            X(j, :) = 0;
        end
    end
    X(~any(X, 2), : ) = [];
    for j = 1:length(X(:, 1))
        if ismember(1, X(j, :)) && ismember(2, X(j, :))
            Count_AB = Count_AB + 1;
        end
        if ismember(2, X(j, :))
            Count_B = Count_B + 1;
        end
    end
    y(1, i) = Count_AB / Count_B;
end

plot(x, y)
