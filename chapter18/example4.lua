-- 真正的迭代器

-- 使用一个迭代器读取文本中的所有单词
local path = "./test.txt";
io.input(path);
local cnt = 0;
function allwords(f)
    for line in io.lines() do
        for word in string.gmatch(line,"%w+") do
            f(word);
        end
    end
end

allwords(function(word) 
    cnt = cnt+1;
    print(string.format("word %d:%s", cnt, word));
end
);

