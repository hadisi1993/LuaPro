-- 改写T4，使最多使用n个加法和n个乘法
function f(factor, x)
    local res = 0;
    for i = #factor,1,-1 do
        res = res*x+factor[i];
    end
    return res;
end

print(f({0,1,2},2)==10);
print(f({1,1,2,3,4},1)==11);