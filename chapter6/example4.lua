-- 可变长参数函数
-- 返回可变长参数的总和
function getSumOfParams(...)
    local sum = 0;
    for _,v in ipairs{...} do
        sum=sum+v;
    end
    return sum;
end

print(getSumOfParams(9,19,29));