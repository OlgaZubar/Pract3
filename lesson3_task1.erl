-module(lesson3_task1).
-export([first_word/1]).

first_word(BinText) ->
    case re:run(BinText, <<"^\\w+">>, [{capture, first, binary}]) of
        {match, [Word]} -> Word;  
        nomatch -> <<>>            
    end.
