-- �˻ʺ�����

-- �жϲ���İ˻ʺ��Ƿ�Ϸ�
-- params: a ���� (n,c) λ��

isAllowedCnt = 0;
function isAllowed(a, n, c)
    isAllowedCnt = isAllowedCnt + 1;
    for i = 1, n-1 do
       -- �ж������ͶԽ���
       if(a[i] == c) or (a[i]-c == i-n) or (a[i] - c == n-i) then
            return false;
       end 
    end
    return true;
end


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

N = 8;
-- ��Ӱ˻ʺ�
function addQueens(a, n)
    if n>N then
        printQueens(a, N);
        return;
    else
        for i = 1, N do
            if isAllowed(a, n, i) then
                a[n] = i;
                addQueens(a, n+1); 
            end
        end
    end
end

-- �޸ĺ�ʹֹͣ����
function addQueens2(a, n)
    if n>N then
        printQueens(a, N);
        os.exit(0);           -- ����os.exit�˳�����
    else
        for i = 1, N do
            if isAllowed(a, n, i) then
                a[n] = i;
                addQueens2(a, n+1); 
            end
        end
    end
end



addQueens({}, 1);
print(isAllowedCnt);