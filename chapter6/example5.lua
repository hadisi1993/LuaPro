-- 判断可变长参数中是否含有nil
-- table.pack函数在5.2中出现
function nonils(...)
    local arg = table.pack(...);
    for i = 1, arg.n  do
        if arg[i] == nil then 
            return false;
        end
    end
    return true;
end

t = {1,nil,2};
print(nonils{t});

