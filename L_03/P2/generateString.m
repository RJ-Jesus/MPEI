function [Str] = generateString()
MIN = 3;
MAX = 20;
SYM = ['a':'z' 'A':'Z'];
length = MIN + randi(MAX);
# length = MIN + floor((1 + MAX - MIN) * rand);
numbers = randi(prod(size(SYM)), [1 length]);
Str = SYM(numbers);
endfunction
