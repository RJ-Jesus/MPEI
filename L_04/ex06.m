[Pl, l] = probability2LettersPT('pg21209.txt');

P_Ci = sum(Pl');
E_Ci = sum(l .* P_Ci);
Var_Ci = sum(l .^ 2 .* P_Ci) - E_Ci ^ 2;
P_Cj = sum(Pl);
E_Cj = sum(l .* P_Cj);
Var_Cj = sum(l .^ 2 .* P_Cj) - E_Cj ^ 2;

subplot(1, 2, 1);
hist(P_Ci, length(l));
subplot(1, 2, 2);
hist(P_Cj, length(l));

Cov_Ci_Cj = sum(sum((l .- E_Ci)' * (l .- E_Cj) .* Pl));
cCov = Cov_Ci_Cj / sqrt(Var_Ci * Var_Cj);
fprintf('Covariance coefficient = %f\n', cCov);

Entropy_Ci = 0;
Entropy_Cj = 0;
Entropy_Ci_Cj = 0;
for i = 1:length(l)
    if P_Ci(i)
        Entropy_Ci = Entropy_Ci - P_Ci(i) * log2(P_Ci(i));
    end
    if P_Cj(i)
        Entropy_Cj = Entropy_Cj - P_Cj(i) * log2(P_Cj(i));
    end
    for j = 1:length(l)
        if Pl(i, j)
            Entropy_Ci_Cj = Entropy_Ci_Cj - Pl(i, j) * log2(Pl(i, j));
        end
    end
end
fprintf('Entropy Ci = %f\n', Entropy_Ci);
fprintf('Entropy Cj = %f\n', Entropy_Cj);
fprintf('Entropy Ci_Cj = %f\n', Entropy_Ci_Cj);
