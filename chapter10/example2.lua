-- ģʽƥ��
-- ƥ���ַ������еİ���������
print(string.match("Today is 20221120","%d+"));

-- ƥ���ַ������е��������ַ�
print(string.match("...++-+++====afseses12321++~~~~","%w+"));


-- ƥ������еĿհ����Ŷ�
print(string.match("sfdfs(    )---","%(%s+%)"));

-- ����ƥ��
-- *��������ƥ�䣻 -�������ٵ�ƥ��
print(string.match("abababababab","a%a*b"));
print(string.match("abababababab","a%a-b"));

-- �����жϣ��ж�һ�����Ƿ�Ϊ����
function checkInteger(num)
    return string.find(num, "^[+-]?%d+$") and true or false;
end

print(checkInteger("10000"));

-- %b: ƥ��ɶԵ��ַ���
-- ʾ��: ��ȡHTML�е����б�ǩ
function get_all_labels(html)
    local labels = {};
    for label in string.gmatch(html, "%b<>") do
        table.insert(labels,label);
    end
    return table.concat(labels, " ");
end
print(get_all_labels("<html><p>Hello World</p></html>"));


-- %f[char-set]: ǰ��ƥ��
function repalce_complete_the_in_sentence(sentence)
    return string.gsub(sentence,"%f[%w]the%f[%W]", "one");
end
print(repalce_complete_the_in_sentence("the anthem is the theme"));