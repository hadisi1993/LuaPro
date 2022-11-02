-- lua函数的语法格式
-- 以求和函数函数为例
function accumulate(a)
    local sum = 0;
    for i = 1, #a do
        sum = sum + a[i];
    end
    return sum;
end

print(accumulate({1,2,3,4,5}));