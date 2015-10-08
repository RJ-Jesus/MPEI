X = lcg(7, 13^13, 13^7, 2^59, 1000);
hist(X);
n = length(unique(X));
disp(n);
