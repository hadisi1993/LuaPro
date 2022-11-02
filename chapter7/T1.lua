-- 读取文本文件并根据排序重写

-- 读取调用参数
if arg[1]~=nil then
    io.input(arg[1]);
end

local lines = {};

-- 将所有行全部读取到lines表中
for line in io.lines() do
    lines[#lines+1] = line;
end


-- 排序
table.sort(lines);

if arg[2]~=nil then
    io.output(arg[2]);
end

for _,l in ipairs(lines) do
    io.write(l, "\n");
end