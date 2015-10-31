X = [-1 0 1]
Y = [-1 0 1]

P_XY = [1/8 1/8 1/24
	1/8 1/4 1/8
	1/24 1/8 1/24]

P_X = sum(P_XY');
P_Y = sum(P_XY);

if P_X' * P_Y == P_XY
	fprintf('Events are independent!\n');
else
	fprintf('Events are not independent!\n');
end

# This is wrong!!!!!!!!!

X2 = unique(X .^ 2)
Y2 = unique(Y .^ 2)

P_X2Y2 = zeros(2, 2);

for i = 1:length(X)
	Xi = X(i);
	for j = 1:length(Y)
		Yi = Y(i);
		P_X2Y2(Xi^2+1, Yi^2+1) = P_X2Y2(Xi^2+1, Yi^2+1) + P_XY(i, j);
	end
end
