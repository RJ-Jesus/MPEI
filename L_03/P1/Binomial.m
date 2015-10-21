function [y] = Binomial(n, p, N)
  y = sum(rand(n, N) < p);
endfunction
