local Set = {};
local mt = {};
function Set.new(l)
    local set = {};
    setmetatable(set, mt);
    for _,v in pairs(l) do
        set[v] = true;         
    end
    return set;
end


function Set.union(a, b)
    local set = Set.new{};
    for k in pairs(a) do set[k] = true end
    for k in pairs(b) do set[k] = true end
    return set;
end

function Set.intersection(a, b)
    local set = Set.new{};
    for k in pairs(a) do set[k] = b[k] end
    return set;
end


function Set.tostring(set)
    local l = {}
    for e in pairs(set) do
        l[#l+1] = tostring(e);
    end
    return "{".. table.concat(l, ", ").."}";
end

return Set;