X = 0:2;
Y = 0:2;
P_XY = [0.3, 0.2, 0
	0.1, 0.15, 0.05
	0, 0.1, 0.1];

P_X = sum(P_XY')
P_Y = sum(P_XY)

E_X = sum(X .* P_X)
Var_X = sum(X .^ 2 .* P_X) - E_X ^ 2
E_Y = sum(Y .* P_Y)
Var_Y = sum(Y .^ 2 .* P_Y) - E_Y ^ 2

E_XY = sum(sum(X' * Y .* P_XY))
Cov_XY = E_XY - E_X * E_Y
cCor_XY = Cov_XY / (sqrt(Var_X) * sqrt(Var_Y))
