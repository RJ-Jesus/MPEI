function [Pl, l] = probability2LettersPT(file)

% example of usage  [Pl, l] = probability2LettersPT('myBigSampleFile.txt');

% Set the portuguese letters + diacritics
l = ['a':'z' 'áâãàçéêíóôõú' 'A':'Z' 'ÁÂÃÀÇÉÊÍÓÔÕÚ'];

% Set a #l * #l matrix to hold the probabilities to each letter
Pl = zeros(length(l));

% Counter for the amount of sets of two letters
c = 0;

fid = fopen(file);

tline = fgets(fid);
while ischar(tline);
    twords = strsplit(tline);
    for i = 1:length(twords)
        word = twords{i};
        for j = 1:length(word) - 1
            ci = word(j);
            cf = word(j + 1);
            idxi = find(l == ci);
            idxj = find(l == cf);
            if length(idxi) ~= 1 || length(idxj) ~= 1, break, end
            Pl(idxi, idxj) = Pl(idxi, idxj) + 1;
            c = c + 1;
        end
    end
    tline = fgets(fid);
end

fclose(fid);

Pl = Pl / c;

end
