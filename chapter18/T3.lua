-- 编写一个uniquewords函数，该函数返回指定文件中没有重复的所有单词
local path = "./test.txt";
io.input(path);

-- 使用迭代器遍历txt文件中的每一个单词
function allwords()
    local line = io.read();
    local wordReaded = {};    -- 已经读取过的单词
    local word;
    local pos = 1;
    local e;
    return function()
        while line do
            word, e = string.match(line, "(%w+)()", pos);
            if word then
                if wordReaded[word]== nil then
                    wordReaded[word] = true;
                    return word;
                end
                pos = e;
            else
                line = io.read();
                pos = 1;
            end 
        end
        return nil;
    end
end

local cnt = 1;
for word in allwords() do
    print(string.format("word %d:%s", cnt, word));
    cnt = cnt + 1;
end