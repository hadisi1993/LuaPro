-- ��дһ��������������ָ�����ϵ������Ӽ�
local t = {1,2,3};

-- ��ӡ��
function printTable(t)
    local res = "{ "..table.concat(t,",").." }";
    print(res);
end
-- �����Ӽ�
function getSubSet(index,temp)
    if index == #t+1 then
        printTable(temp);
        return;
    else
        getSubSet(index+1, temp);
        table.insert(temp, t[index]);
        getSubSet(index+1, temp);
        table.remove(temp);
    end
end
function allSubSet(f)
    local index = 1;
    local temp = {};
    f(index, temp);
end

allSubSet(getSubSet);