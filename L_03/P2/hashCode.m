function h = hashCode(Str)
h = int64(0);
MAX32 = int64(intmax);
for i = 1:length(Str)
    h = mod(31 * h + Str(i), MAX32);
endfor
endfunction
