local  str = "E:\\THS\\Lua_Programming\\chapter20\\text.txt"
local file = io.open(str, "r");

for line in file:lines(1) do
    print(line);
    print("---------");
end