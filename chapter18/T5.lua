-- 编写一个迭代器，遍历指定集合的所有子集
local t = {1,2,3};

-- 打印表
function printTable(t)
    local res = "{ "..table.concat(t,",").." }";
    print(res);
end
-- 查找子集
function getSubSet(index,temp)
    if index == #t+1 then
        printTable(temp);
        return;
    else
        getSubSet(index+1, temp);
        table.insert(temp, t[index]);
        getSubSet(index+1, temp);
        table.remove(temp);
    end
end
function allSubSet(f)
    local index = 1;
    local temp = {};
    f(index, temp);
end

allSubSet(getSubSet);