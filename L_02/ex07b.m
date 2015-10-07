E = 15;
K = 0:10;

nP_P = sum(E.^K * e^-E./factorial(K));

disp(1 - nP_P);
