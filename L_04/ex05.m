X = 0:1;	% [Chuva, Sol] - student predictions
P_X = [0, 1];
E_X = sum(X .* P_X);

T = 0:1;	% [Chuva, Sol] - year based predictions
P_T = [0.75, 0.25];
E_T = sum(T .* P_T);

XT = X' * T;
P_XT = zeros(length(X), length(T));
S = rand(2, 1e6);
S(1, :) = S(1, :) < P_X(2);
S(2, :) = S(2, :) < P_T(2);
for i = X
	for j = T
		P_XT(i+1, j+1) = sum(sum(bsxfun(@eq, S, [i, j]')) == 2) / 1e6;
	end
end

Cov_XT = sum(sum((X .- E_X)' * (T .- E_T) .* P_XT));
%   The value above actually is equal to 0 (or so it should), so
% this means the two variables are unrelated. Thus, it is unprofitable
% to hire the student.
%   A same concept can be followed changing  X to describe the decisions
% made by the meteorologist. In this case and since the variables are related
% the covariance of X and T will not be 0, and thus it might make sense to keep
% him (this 'might' depends on the covariance coefficient, and being more close to
% -1 or to 1 means good news to the man, while being close to 0 means bad
% news.
