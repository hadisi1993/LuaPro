-- 创建一个以转义序列为值，转义序列对应字符串为键的表
local t = {["bell"] = "\a", ["bace space"] = "\b", ["form feed"] = "\f"};

for k,v in pairs(t) do
    print(k,v);
end