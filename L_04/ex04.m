N = 120;
E_N_1_t = 14;
E_N_2_t = 1.2 * E_N_1_t;
Var_N_1_t = 1/4 * E_N_1_t;
Var_N_2_t = 1/4 * E_N_2_t;

N_1 = round(E_N_1_t + sqrt(Var_N_1_t) * randn(1, N));
N_1(find(N_1 < 0)) = 0;
N_1(find(N_1 > 20)) = 0;
N_2 = round(E_N_2_t + sqrt(Var_N_2_t) * randn(1, N));
N_2(find(N_2 < 0)) = 0;
N_2(find(N_2 > 20)) = 0;

hist(N_1 + N_2);
