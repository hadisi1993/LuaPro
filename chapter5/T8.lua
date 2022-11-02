-- 实现table.concat函数

function MyTableConcat(array)
    local res = "";
    for _,v in pairs(array) do
        res = res..v;
    end
    return res;
end

print(MyTableConcat({"hello"," ","world"}));

-- 比较速度
local array = {};
for i = 1,100000 do
    array[i] = tostring(i);
end
local s = os.clock();
local res = table.concat(array);
local e = os.clock();
print("time 1 :",tostring(e-s));
local s = os.clock();
local res = MyTableConcat(array);
local e = os.clock();
print("time 2 :",tostring(e-s));
-- Lua的字符串是不可变的，每一次进行连接操作之后，其实就产生了新的字符串，不再是原来的那个了。
-- 于是，不断连接，就不断产生新的字符串，产生新字符串是需要复制操作，随着连接操作的不断进行，字符串越来越大，复制操作也就越来越耗时。