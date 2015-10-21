function [X] = loadHashTableN(N, alpha)
if N <= 0
	N = 1000;			# Number of Strings to create
endif

if alpha <= 0 || alpha > 1
	alpha = 0.8;
endif
#####
# alpha = n / table.length
# @alpha 					load factor
# @n							number of elements
# @table.length		length of hash table
#####
length = floor(N / alpha);

X = zeros(1, length);

for i = 1:N
	idx = 1 + mod(hashCode(generateStringN(10, 5, 'pg21209.txt')), length);
	X(idx) = X(idx) + 1;
endfor

subplot(1, 2, 1);
bar(1:length, X);

subplot(1, 2, 2);
hist(X);
endfunction
