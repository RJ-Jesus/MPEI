N = 20;

T =  rand(N);
T = bsxfun(@rdivide, T, sum(T));
CumSumT = cumsum(T);

J = 20;
c = 0;
t = 1e3;
for j = 1:t
    X = [ceil(N * rand), zeros(1, J)];
    for i = 2:J + 1
        X(i) = find(CumSumT(:, X(i-1)) > rand)(1);
    end
    for i = 2:J
        if X(i-1) == 1 && X(i) == N
            c = c + 1;
        end
    end
end
fprintf("P(1 -> %d in %d trials) = %.2f\n", N, J, c / t);
 
J = 40;
c = 0;
t = 1e3;
for j = 1:t
        X = [ceil(N * rand), zeros(1, J)];
        for i = 2:J + 1
                X(i) = find(CumSumT(:, X(i-1)) > rand)(1);
        end
        for i = 2:J
                if X(i-1) == 1 && X(i) == N
                        c = c + 1;
                end
        end
end
fprintf("P(1 -> %d in %d trials) = %.2f\n", N, J, c / t);

J = 100;
c = 0;
t = 1e3;
for j = 1:t
        X = [ceil(N * rand), zeros(1, J)];
        for i = 2:J + 1
                X(i) = find(CumSumT(:, X(i-1)) > rand)(1);
        end
        for i = 2:J
                if X(i-1) == 1 && X(i) == N
                        c = c + 1;
                end
        end
end
fprintf("P(1 -> %d in %d trials) = %.2f\n", N, J, c / t);
