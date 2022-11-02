-- 八皇后的另一种解法

-- 打印函数
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
-- 判断插入的八皇后是否合法
-- params: a 参数 (n,c) 位置
function isAllowed(a, n, c)
    isAllowdCnt = isAllowdCnt + 1;
    for i = 1, n-1 do
       -- 判断列数和对角线
       if(a[i] == c) or (a[i]-c == i-n) or (a[i] - c == n-i) then
            return false;
       end 
    end
    return true;
end

local cnt = 0;
Queens = {1,2,3,4,5,6,7,8};
-- 首先生成1~8的序列
function generateOrder(a, index)
    if index > 8 then
        -- 判断排列是否合法
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