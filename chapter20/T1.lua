-- 定义元方法计算集合的差集

local Set = {};

function subSet(a, b)
    local res = {};
    for k in pairs(a) do
        if b[k] == nil then
            res[k] = a[k]; 
        end
    end
    return res;
end

function Set.tostring(set)
    local l = {}
    for e in pairs(set) do
        l[#l+1] = tostring(e);
    end
    return "{".. table.concat(l, ", ").."}";
end

local mt =  {__sub = subSet};
-- local mt =  {__sub = subSet};
function Set.new(l)
    local res = {};
    setmetatable(res, mt);
    for _,v in ipairs(l) do
        res[v] = true;                    -- 这里将res[v]的值赋为true
    end
    return res;
end

local s1 = Set.new{1,2,3,4,5};
local s2 = Set.new{3};
print(Set.tostring(s1));
print(Set.tostring(s2));
print(Set.tostring(s1-s2));




