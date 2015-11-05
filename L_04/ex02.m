X = -1:1;
Y = -1:1;
P_XY = [1/8, 1/8, 1/24
	1/8, 1/4, 1/8
	1/24, 1/8, 1/24];

P_X = sum(P_XY');
P_Y = sum(P_XY);
printf("Events X and Y are independent: %d\n", sum(sum(P_XY - P_X' * P_Y < eps)) == length(X) * length(Y));

X2 = unique(X .^ 2);
Y2 = unique(Y .^ 2);
P_X2Y2 = zeros(length(X2), length(Y2));
for i = 1:length(X)
	iP_X2Y2 = find(X2 == X(i) ^ 2);
	for j = 1:length(Y)
		jP_X2Y2 = find(Y2 == Y(j) ^ 2);
		P_X2Y2(iP_X2Y2, jP_X2Y2) = P_X2Y2(iP_X2Y2, jP_X2Y2) + P_XY(i, j);
	end
end
P_X2 = sum(P_X2Y2');
P_Y2 = sum(P_X2Y2);
printf("Events X^2 and Y^2 are independet: %d\n", sum(sum(P_X2Y2 - P_X2' * P_Y2 < eps)) == length(X2) * length(Y2));

E_2_XY = sum((X' .^ 2 * Y .^ 2 .* P_XY)(:))
E_3_XY = sum((X' .^ 3 * Y .^ 3 .* P_XY)(:))

P_X = sum(P_XY');
E_2_Z = sum(((4 .+ X) .^ (1/2) .^ 2 .* P_X)(:))
E_3_Z = sum(((4 .+ X) .^ (1/2) .^ 3 .* P_X)(:))
