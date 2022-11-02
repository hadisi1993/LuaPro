-- 编写一个迭代器，可以返回指定字符串的所有非空子串

testString = "abcdde";

-- 迭代生成子串
function allSubStr(str)
    local substring = {}; -- 保存生成过的子串
    local s = 1;
    local e = 1;
    return function()
        for s = 1,#str do
            for e = s, #str do
                local curStr =  string.sub(str,s,e); 
                if substring[curStr] == nil then
                    substring[curStr] = true;
                    return curStr;                         -- 去除重复的子串
                end
            end
        end
        return nil;
    end
end

for subStr in allSubStr(testString) do
    print(subStr);
end