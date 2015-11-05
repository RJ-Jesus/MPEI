X = 0:2;
Y = 0:2;

P_XY = [0.3 0.2 0
	0.1 0.15 0.05
	0 0.1 0.1]

# P_X = sum(P_XY, 2);
# P_Y = sum(P_XY, 1);
P_X = sum(P_XY')
P_Y = sum(P_XY)

E_X = sum(X .* P_X)
E_Y = sum(Y .* P_Y)
E_XY = sum(sum(X' * Y .* P_XY))
Cor = E_XY;

Var_X = sum(X .^ 2 .* P_X)
Var_Y = sum(Y .^ 2 .* P_Y)
Var_XY = E_XY - E_X * E_Y
Cov = Var_XY;

CoeCor = Cov / (sqrt(Var_X) * sqrt(Var_Y))
