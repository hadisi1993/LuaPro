-- ��дһ�������������Է���ָ���ַ��������зǿ��Ӵ�

testString = "abcdde";

-- ���������Ӵ�
function allSubStr(str)
    local substring = {}; -- �������ɹ����Ӵ�
    local s = 1;
    local e = 1;
    return function()
        for s = 1,#str do
            for e = s, #str do
                local curStr =  string.sub(str,s,e); 
                if substring[curStr] == nil then
                    substring[curStr] = true;
                    return curStr;                         -- ȥ���ظ����Ӵ�
                end
            end
        end
        return nil;
    end
end

for subStr in allSubStr(testString) do
    print(subStr);
end