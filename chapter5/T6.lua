-- �ж�һ�����ǲ�����Ч������
function checkVaildSequence(array)
    if type(array)~="table" then
        return false;
    end
    -- ��Ч�������в��ܴ���nil
    local size = #array;
    local cnt = 0;
    for k,v in ipairs(array) do
        cnt = cnt + 1;
    end
    return cnt == size;
end

print(checkVaildSequence({1,2,3}));
print(checkVaildSequence{1,nil,3});