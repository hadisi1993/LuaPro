--string.find: 查找找单词中某单词出现的位置
function find_index_of_word(sentence,word)
    return string.find(sentence,word);
end

--string.match: 在字符串中搜索模式
function find_time_in_sentence(sentence, pattern)
    return string.match(sentence, pattern);
end

-- string.gub: 替换指定的字符串
function sentence_replace(sentence, pattern_old,pattern_new)
    return string.gsub(sentence, pattern_old,pattern_new);
end

--string.gmatch: 遍历指定的模式
function get_words_in_sentence(sentence, pattern)
    local words = {};
    for word in string.gmatch(sentence, pattern) do
        table.insert(words, word);
    end 
    return table.concat(words,"|");
end

print(find_index_of_word("hello world", "world"));
print(find_time_in_sentence("Today is 2000/01/01", "%d+/%d+/%d+"));
print(sentence_replace("Raplace all words in the sentence to XX","word","XX"));
print(get_words_in_sentence("hello world", "%a+"));