-- 使用一个迭代器读取文本中的所有单词
local path = "./test.txt";
io.input(path);

-- 使用迭代器遍历txt文件中的每一个单词
function allwords()
    local line = io.read();
    local word;
    local pos = 1;
    local e;
    return function()
        while line do
            word, e = string.match(line, "(%w+)()", pos);
            if word then
                pos = e;
                return word;
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