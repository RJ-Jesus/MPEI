P = 1/1000;
N = 8000;
K = 7;

P_B = nchoosek(8000, 7) * P^K * (1-P)^(N-K);
P_P = (P*N)^K * e^-(P*N)/factorial(K);

printf("Binomial: %f\n", P_B);
printf("Poisson: %f\n", P_P);
