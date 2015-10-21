function [y] = Bernoulli(p, n)
  y = rand(1, n) < p;
endfunction
