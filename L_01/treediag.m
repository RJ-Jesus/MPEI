function [ Perms ] = treediag( alphaSize, seqSize )
%TreeDiag TreeDiagram of a seqSize long sequences of an alphaSize long
%alphabet
%   @Params:
%       alphaSize - Alphabet Size
%       seqSize   - Sequence Size
%   @Return:
%       Perms - Table view of a tree diagram according to alphaSize and
%           seqASize
    Perms = zeros(alphaSize^seqSize, seqSize);
    for i = 1:seqSize
        length = alphaSize^(seqSize-i);
        Counter=1;
        for j = 1:length:alphaSize^seqSize
            Perms(j:j+length-1, i) = Counter;
            if Counter == alphaSize
                Counter = 0;
            end
            Counter = Counter+1;
        end
    end
end
