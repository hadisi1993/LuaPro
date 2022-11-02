-- 多返回值的情况
-- 返回数组中最大值和它的索引

function getIndexAndMaxinum(a)
    local index = 1;
    local Max = a[index];
    for i = 1, #a do
        if a[i]>Max then
            index, Max = i, a[i];
        end
    end 
    return index, Max;
end

print(getIndexAndMaxinum({4,8,9,0,2,1,7,6,5,3}));