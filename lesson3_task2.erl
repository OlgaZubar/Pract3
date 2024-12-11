-module(lesson3_task2).
-export([words/1]).

words(BinText) ->
    words(BinText, <<>>, []).

% Основна рекурсивна функція
words(<<>>, Acc, Words) -> 
    lists:reverse(Words);  % Повертаємо список слів, обрізаємо зворотній порядок
words(<<32, Rest/binary>>, Acc, Words) -> 
    case Acc of
        <<>> -> 
            words(Rest, <<>>, Words); % Якщо попереднє слово порожнє, продовжуємо
        _ -> 
            words(Rest, <<>>, [Acc | Words]) % Додаємо слово в результат
    end;
words(<<Char, Rest/binary>>, Acc, Words) ->
    words(Rest, <<Acc/binary, Char>>, Words).  % Додаємо символ до поточного слова
