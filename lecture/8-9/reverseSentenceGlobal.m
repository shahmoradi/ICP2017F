function reverseSentenceGlobal()
    % reverseSentence recursively prints the words in a string in reverse order
    global globalString
    getToken(globalString)
    function getToken(string)
        [word, rest] = strtok(string);
        if ~isempty(rest)
            getToken(rest);
        end
        fprintf([word,' '])
    end
    fprintf('\n')
end