-- 捕获
-- 捕获key = value 形式的key-value值
function get_key_and_value_from_string(str) 
    for key, value in string.gmatch(str, "(%w+)%s*=%s*(%w+)") do
        print(key, value); 
    end
end
get_key_and_value_from_string("key1 = 1; key2 = 2; key3 = 3"); 
-- 捕获日期
function get_date(str)
    year , month, day = string.match(str, "(%d+)-(%d+)-(%d+)");
    return year, month, day;
end
print(get_date("2022-11-20"));
-- 捕获长字符串的内容
print(string.match("a = [=[[[ something ]] ]==] ]=]; print(a)","%[(=*)%[(.-)%]%1%]"));
-- 替换字符串
print((string.gsub("hello lua!", "%a", "%0-%0")));

-- 格式转换器
function format_transform(str)
    local s = string.gsub(str, "\\(%a+){(.-)}","<%1>%2</%1>");
    return s;
end
print(format_transform([[the \quote{task} is to \em{change} that.]]));
