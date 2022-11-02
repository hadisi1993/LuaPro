package.path = package.path..";..\\?.lua";
-- print(package.path);
-- print(package.cpath);
require("chapter21.T1");


local s = Stock:new({});
local s1 = {3,4,5,6,7,9,8,10,12,13};
for _,v in ipairs(s1) do
    print(v);
    s:push(v);
    print(s:tostring());
end
s:pop();
print(s:top());
s:pop();
print(s:top());
s:pop();
print(s:top());
print(s:tostring());
print(s:isempty());
while #s~=0 do
    s:pop();
end
print(s:isempty());