-- ����
-- ����key = value ��ʽ��key-valueֵ
function get_key_and_value_from_string(str) 
    for key, value in string.gmatch(str, "(%w+)%s*=%s*(%w+)") do
        print(key, value); 
    end
end
get_key_and_value_from_string("key1 = 1; key2 = 2; key3 = 3"); 
-- ��������
function get_date(str)
    year , month, day = string.match(str, "(%d+)-(%d+)-(%d+)");
    return year, month, day;
end
print(get_date("2022-11-20"));
-- �����ַ���������
print(string.match("a = [=[[[ something ]] ]==] ]=]; print(a)","%[(=*)%[(.-)%]%1%]"));
-- �滻�ַ���
print((string.gsub("hello lua!", "%a", "%0-%0")));

-- ��ʽת����
function format_transform(str)
    local s = string.gsub(str, "\\(%a+){(.-)}","<%1>%2</%1>");
    return s;
end
print(format_transform([[the \quote{task} is to \em{change} that.]]));
