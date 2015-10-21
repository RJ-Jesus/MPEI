function [y] = lcg(X0, a, c, m, N)
  y = zeros(1, N);
  y(1) = mod(X0, m);
  for i = 2:N
     y(i) = mod(y(i-1) * a + c, m);
  endfor
  y = y ./ m;
endfunction
