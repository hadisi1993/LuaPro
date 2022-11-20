-- 模式匹配
-- 匹配字符串当中的阿拉伯数字
print(string.match("Today is 20221120","%d+"));

-- 匹配字符串当中的数字与字符
print(string.match("...++-+++====afseses12321++~~~~","%w+"));


-- 匹配程序中的空白括号对
print(string.match("sfdfs(    )---","%(%s+%)"));

-- 次数匹配
-- *：按最多的匹配； -：按最少的匹配
print(string.match("abababababab","a%a*b"));
print(string.match("abababababab","a%a-b"));

-- 整数判断：判断一个数是否为整数
function checkInteger(num)
    return string.find(num, "^[+-]?%d+$") and true or false;
end

print(checkInteger("10000"));

-- %b: 匹配成对的字符串
-- 示例: 获取HTML中的所有标签
function get_all_labels(html)
    local labels = {};
    for label in string.gmatch(html, "%b<>") do
        table.insert(labels,label);
    end
    return table.concat(labels, " ");
end
print(get_all_labels("<html><p>Hello World</p></html>"));


-- %f[char-set]: 前置匹配
function repalce_complete_the_in_sentence(sentence)
    return string.gsub(sentence,"%f[%w]the%f[%W]", "one");
end
print(repalce_complete_the_in_sentence("the anthem is the theme"));