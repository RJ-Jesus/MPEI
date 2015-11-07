function [ps, letras] = probabilityLettersPT(ficheiro)

% example of usage  [ps, letras] = probabilityLettersPT('pg21209.txt')

% assuming only letters


% 1 for more information during execution

debug = 0;

%%

lower = 'abcdefghijklmnopqrstuvwxyzçáéíóúãõâêôà';   

upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZÇÁÉÍÓÚÃÕÂÔÊÀ';

% open file for reading

fid = fopen(ficheiro);

% arrays for counting

contador1 = zeros(1, length(lower));

contador2 = zeros(1, length(upper));

%

totalLetras = 0;

%  ler todo o ficheiro

while 1    
    linha = fgetl(fid);

    if ~ischar(linha), break, end

    if debug
        fprintf(1,'read = |%s|  length = %d\n', linha, length(linha));    
    end

    % always count carriage return

    if length(linha) > 0
        linha = [linha sprintf('\n')];
    end

    if length(linha) == 1
        fprintf(1, 'length = 1  !!!\n');
    end

    if debug
        fprintf(1,'to process = |%s|\n', linha);
    end

    totalLetras = totalLetras + length(linha);

    % update counter with respect to lowercase letters

    for k = 1:length(lower)
        resul = find(linha == lower(k));
        contador1(k) = contador1(k) + length(resul);
    end

    % update counter with respect to uppercase letters

    for k = 1:length(upper)
        resul = find(linha == upper(k));
        contador2(k) = contador2(k) + length(resul);
    end

  if debug 
    fprintf(1, 'processed letters = %d\n', totalLetras);
  end

end

fclose(fid);


%% mostrar

if 0

figure(1)
clf

subplot(211)

bar(1:length(contador1), contador1 / totalLetras)
title('minusc')
set(gca, 'XTick', 1:length(contador1))
set(gca, 'XTickLabel', cellstr(lower'))
ax = axis;

subplot(212)

bar(1:length(contador2), contador2 / totalLetras)
title('maiusc')
set(gca, 'XTick', 1:length(contador2))
set(gca, 'XTickLabel', cellstr(upper'))
ax2 = axis;

ax2(4) = ax(4);
axis(ax2);

end

%% values to return

contagens = [contador1 contador2];

ps = contagens / totalLetras;

ps = ps / sum(ps);  % to ensure there is a pmf

letras = [lower upper];
