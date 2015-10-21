function [Xn, Yn] = NormalRejection(N)

u = 0; o = 1;

f = @(x)(1 / (o*sqrt(2)*pi) * exp(-(x-u).^2 / (2*o^2)));

a = -5; b = 5;

X = rand(1, N) * (b - a) + a;
Y = rand(1, N);

n = Y <= f(X);
Xn = X(n);
Yn = Y(n);

endfunction
