function [y] = pmf(Xi, Pi, N)
  if ~length(Xi) || length(Xi) ~= length(Pi) || N <= 0
    y = []
  else
    Pc = cumsum(Pi);
    y = rand(1, N);
    y(find(y < Pc(1))) = Xi(1);
    for i = 2:length(Xi)
      y(find(y > Pc(i-1) & y < Pc(i))) = Xi(i);
    endfor
    # y = arrayfun(@(i)(Xi(find(rand <= Pc, 1))), 1:N);  # Less efficient
  endif
endfunction
