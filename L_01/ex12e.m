%%%%%
%   Events
%
% A := "Sequence includes 1"
% B := "Sequence includes 2"
%%%%%

alphaSize = 10;  % Alphabet Size
seqSize = 5;     % Sequence Size

%   Let X represent a table view of all the possibilities of seqSize long
%   phrases using values in 1:alphaSize
X = treediag(alphaSize, seqSize);

Count_AB = 0;
Count_B = 0;
for i = 1:length(X(:, 1))
    if ismember(1, X(i, :)) && ismember(2, X(i, :))
        Count_AB = Count_AB + 1;
    end
    if ismember(2, X(i, :))
        Count_B = Count_B + 1;
    end
end

P_AgB = Count_AB / Count_B;
disp(P_AgB);
