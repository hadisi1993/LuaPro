-- io.input似乎不支持相对路径，所以写绝对路径吧
io.input("E:\\THS\\Lua_Programming\\chapter7\\iotest.txt");
local lines = {};

-- 将所有行全部读取到lines表中
for line in io.lines() do
    lines[#lines+1] = line;
end

-- 排序
table.sort(lines);

for _,l in ipairs(lines) do
    io.write(l, "\n");
end