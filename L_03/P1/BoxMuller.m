function [X, Y] = BoxMuller(N)

U1 = rand(1, N);
U2 = rand(1, N);

X = (-2*log(U1)).^(1/2) .* cos(2*pi*U2);
Y = (-2*log(U1)).^(1/2) .* sin(2*pi*U2);

endfunction
