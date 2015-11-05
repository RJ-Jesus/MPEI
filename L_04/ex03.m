N = 1000;
Mean = 97 * rand(1, 2);
Var = 13 * ones(1, 2);
X = Mean(1) + sqrt(Var(1)) * randn(1, N);
Y = Mean(2) + sqrt(Var(2)) * randn(1, N);
X_1 = round(X);
Y_1 = round(Y);

E_XplusY_t = Mean(1) + Mean(2)
% If S_n = X + Y => E_S_n = E_X + E_Y
%   dependence of X and Y irrelevant to conclusion
Var_XplusY_t = Var(1) + Var(2)
% If S_n = X + Y => Var_S_n = Var_X + Var_Y + Cov(X, Y) + Cov(Y, Y)
%   in case of indepence Cov(X, Y) = Cov(Y, X) = 0

Z = X_1 + Y_1;
[P_i, Z_i] = hist(Z, N);
P_Z = P_i / N;
E_Z = Z_i * P_Z'
Var_Z = Z_i .^ 2 * P_Z' - E_Z ^ 2
