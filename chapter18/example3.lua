-- 按顺序遍历表
lines = 
{
    ["luaH_set"] = 10,
    ["luaH_get"] = 24,
    ["luaH_present"] = 48,
}
-- 无序输出
for k,v in pairs(lines) do
    print(k,v);
end

function pairsByKeys(t, f)
    local arr = {};
    for key in pairs(t) do
        table.insert(arr, key);
    end
    -- 排序
    table.sort(arr, f);
    local i = 0;
    -- 遍历
    return function ()
        i = i + 1;
        return arr[i], t[arr[i]];
    end
end

-- 有序输出
print("-----------------------")
for k,v in pairsByKeys(lines, f) do
    print(k,v);
end