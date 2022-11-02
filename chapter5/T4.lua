-- 使用由系数组成的列表和值，求多项式的值
function f(factor, x)
    local res = 0;
    for i = #factor, 1, -1 do
        res = res + factor[i]*(x^(i-1));
    end
    return res;
end

print(f({0,1,2},2)==10);
print(f({1,1,2,3,4},1)==11);