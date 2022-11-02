-- �˻ʺ����һ�ֽⷨ

-- ��ӡ����
function printQueens(a, n)
    for i = 1, n do
        for j = 1, n do
            io.write(a[i] == j and "X" or "-");
        end
        io.write("\n");
    end
    io.write("\n");
end

isAllowdCnt = 0;
-- �жϲ���İ˻ʺ��Ƿ�Ϸ�
-- params: a ���� (n,c) λ��
function isAllowed(a, n, c)
    isAllowdCnt = isAllowdCnt + 1;
    for i = 1, n-1 do
       -- �ж������ͶԽ���
       if(a[i] == c) or (a[i]-c == i-n) or (a[i] - c == n-i) then
            return false;
       end 
    end
    return true;
end

local cnt = 0;
Queens = {1,2,3,4,5,6,7,8};
-- ��������1~8������
function generateOrder(a, index)
    if index > 8 then
        -- �ж������Ƿ�Ϸ�
        local res = table.concat(a);
        print(res);
        for i = 1,8 do
            if not isAllowed(a, i, a[i]) then
                return;
            end
        end
        printQueens(a, 8);
        cnt = cnt + 1;
        return;
    else
        for i = index,8 do
            local tmp = a[i];
            a[i] = a[index];
            a[index] = tmp;
            generateOrder(a, index+1);
            tmp = a[i];
            a[i] = a[index];
            a[index] = tmp;
        end
    end

end

generateOrder(Queens, 1);
print(cnt);
print(isAllowdCnt);