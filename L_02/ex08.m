f_x = @(x)((x+5)/30);

P_total = sum(f_x(1:4));

disp(P_total == 1);
