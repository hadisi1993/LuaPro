-- 判断一个表是不是有效的序列
function checkVaildSequence(array)
    if type(array)~="table" then
        return false;
    end
    -- 有效的序列中不能存在nil
    local size = #array;
    local cnt = 0;
    for k,v in ipairs(array) do
        cnt = cnt + 1;
    end
    return cnt == size;
end

print(checkVaildSequence({1,2,3}));
print(checkVaildSequence{1,nil,3});