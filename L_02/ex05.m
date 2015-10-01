X = 0:0.01:1;

P_2 = arrayfun(@(p)(p^2), X);
P_4 = arrayfun(@(p)(4 * p^3 - 3 * p^4), X);

figure; hold;
P_2Plot = plot(X, P_2, 'r');
P_4Plot = plot(X, P_4, 'b');
legend('2 Motors', '4 Motors');
xlabel('Probability of a motor failing');
ylabel('Probability of the plane crashing');
