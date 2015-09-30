%%%%%
%   Events
%
% A := "Positive mammogram"
% B := "Having breast cancer"
%%%%%

P_B = 1 / 10000;    % P(B)
P_AgB = 0.9;        % P(A|B)
P_AgnB = 0.1;       % Assuming a value for P(A|!B)
N=1e7;              % Sample space

%%%%%
%   Let X be a 2xN matrix where:
% row 1 - Occurences of A
% row 2 - Occurences of B
%%%%%

X = rand(2, N);
X(2, : ) = X(2, : ) < P_B;  % Setting B[i]

Count_A = 0;    % Count of A
Count_AB = 0;   % Cunt of (A && B)

for i = 1:N
    if  X(2, i)  % Setting A[i]
        X(1, i) = X(1, i) < P_AgB;
    else
        X(1, i) = X(1, i) < P_AgnB;
    end
    Count_A = Count_A + X(1, i);
    Count_AB = Count_AB + (X(1, i) & X(2, i));
end

P_BgA = Count_AB / Count_A;
disp(P_BgA);
