N = 120;
E_N_1_t = 14;
E_N_2_t = 1.2 * E_N_1_t;
Var_N_1_t = 1/4 * E_N_1_t;
Var_N_2_t = 1/4 * E_N_2_t;

N_1 = round(E_N_1_t + sqrt(Var_N_1_t) * randn(1, N));
N_1(N_1 < 0) = 0;
N_1(N_1 > 20) = 0;
N_2 = round(E_N_2_t + sqrt(Var_N_2_t) * randn(1, N));
N_2(N_2 < 0) = 0;
N_2(N_2 > 20) = 0;

P_N1 = zeros(1, 21);
E_N1 = 0;
P_N2 = zeros(1, 21);
E_N2 = 0;
P_N1_N2 = zeros(21, 21);
E_N1_N2 = 0;
for i = 1:21
    for j = 1:21
        P_N1_N2(i, j) = sum(N_1 == i - 1) / N * sum(N_2 == j -1) / N;
        E_N1_N2 = E_N1_N2 + P_N1_N2(i, j) * (i - 1) * (j - 1);
    end
    P_N1(i) = sum(N_1 == i - 1) / N;
    E_N1 = E_N1 + P_N1(i) * (i - 1);
    P_N2(i) = sum(N_2 == i - 1) / N;
    E_N2 = E_N2 + P_N2(i) * (i - 1);
end
subplot(1, 3, 1);
plot(0:20, P_N1);
subplot(1, 3, 2);
plot(0:20, P_N2);
subplot(1, 3, 3);
plot(0:20, P_N1_N2);

Cov = E_N1_N2 - E_N1 * E_N2;
cCov = Cov / sqrt(Var_N_1_t * Var_N_2_t);

fprintf('Independent: %d\n', sum(P_N1_N2(:)) == sum(sum(P_N1' * P_N2))); 

Entropy_N1 = 0;
for i = 1:21
    if P_N1(i)
        Entropy_N1 = Entropy_N1 - P_N1(i) * log2(P_N1(i));
    end
end
disp(Entropy_N1);

Entropy_N2 = 0;
for i = 1:21
    if P_N2(i)
        Entropy_N2 = Entropy_N2 - P_N2(i) * log2(P_N2(i));
    end
end
disp(Entropy_N2);

Entropy_N1_N2 = 0;
for i = 1:21 * 21
        if P_N1_N2(:)(i)
                Entropy_N1_N2 = Entropy_N1_N2 - P_N1_N2(:)(i) * log2(P_N1_N2(:)(i));
        end
end
disp(Entropy_N1_N2);
