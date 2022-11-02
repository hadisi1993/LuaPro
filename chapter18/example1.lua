-- 迭代器
function values(t)
    local i = 0;
    return function ()
        i = i+1;
        return t[i];
    end
end


-- 创建迭代器
local t = {10,20,30,40,50};
iter = values(t);

do
    while true do
        local number = iter();
        if number == nil then
            break;
        end
        print(number);
    end
end