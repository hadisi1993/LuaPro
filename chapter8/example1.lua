-- 各种类型的控制结构

-- if then else 结构
-- 示例：比较两数大小
function compare(a, b)
    if type(a)~="number" or type(b)~="number" then
        print("wrong params format");
        print(type(a),type(b));
        return;
    elseif a>b then
        print(string.format("%d > %d",a,b));
    elseif a == b then
        print(string.format("%d = %d",a,b));
    elseif a<b then
        print(string.format("%d < %d",a,b));
    end
end

-- while结构
-- 示例：输出1~50
function print_one_to_fifty_while()
    local i = 1;
    while i <= 50 do
        print(i);
        i = i+1;
    end
end

-- repeat结构
-- 示例：输出1~50
function print_one_to_fifty_repeat()
    local i = 1;
    repeat
        print(i);
        i = i+1;
    until i>50;
end

-- 数值型for循环
-- 示例：输出1~50
function print_one_to_fifty_for()
    local i = 1;
    for i = 1,50 do
        print(i);
        i = i+1;
    end
end

-- 泛型for循环
-- 示例：输出列表元素
function traverse_table()
    array = { a = 1,b = 2,c = 3,}
    for k,v in pairs(array) do
        print(k,v);
    end
end

-- break
-- 示例：输出到10时结束循环
function print_one_to_fifty_break_on_ten()
    local i = 1;
    for i = 1,50 do
        print(i);
        if i == 10 then
            break;
        end
        i = i+1;
    end
end

-- return
-- 示例：遍历到10时打印并返回
function traverse_until_ten()
    local i = 1;
    while true do
        if i == 10 then
            print(i);
            return;
        end
        i = i+1;
    end

end
-- compare(2,3);
-- print_one_to_fifty_while();
-- print_one_to_fifty_repeat();
-- print_one_to_fifty_for()
-- traverse_table()
-- print_one_to_fifty_break_on_ten();
-- traverse_until_ten();