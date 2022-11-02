-- ��дһ��uniquewords�������ú�������ָ���ļ���û���ظ������е���
local path = "./test.txt";
io.input(path);

-- ʹ�õ���������txt�ļ��е�ÿһ������
function allwords()
    local line = io.read();
    local wordReaded = {};    -- �Ѿ���ȡ���ĵ���
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