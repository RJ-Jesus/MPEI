T = [0.7, 0.2, 0.3
     0.2, 0.3, 0.3
     0.1, 0.5, 0.4];

X_0 = [1, 0, 0]';

P_2 = T ^ 2 * X_0;
fprintf("P_2(Chuva) = %.2f\n", P_2(3));

N = 20;
T_n = T(:);
helper = T;
for i = 2:N
    helper = helper * T;
    T_n = [T_n, helper(:)];
end

plot(T_n');

T_n_2 = T(:);
helper = T;
epsilon = 10^-4
i = 2;
while 1
    helper = helper * T;
    T_n_2 = [T_n_2, helper(:)];
    if abs(T_n_2(i) - T_n_2(i - 1)) < epsilon
        break;
    end
    i = i + 1;
end

