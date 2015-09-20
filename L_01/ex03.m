T = 15;  % Number of tosses
S = 1e6;  % Number of samples

X = sum(round(rand(T, S)));  % Get all the samples and sum them
P = 0;
for i = 0:5
    P = P + sum(X == i);  % Get all the positive cases
end


P = (S-P) / S;
fprintf('%f\n', P);
