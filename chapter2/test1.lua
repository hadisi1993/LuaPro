-- 八皇后问题

-- 判断插入的八皇后是否合法
-- params: a 参数 (n,c) 位置

isAllowedCnt = 0;
function isAllowed(a, n, c)
    isAllowedCnt = isAllowedCnt + 1;
    for i = 1, n-1 do
       -- 判断列数和对角线
       if(a[i] == c) or (a[i]-c == i-n) or (a[i] - c == n-i) then
            return false;
       end 
    end
    return true;
end


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

N = 8;
-- 添加八皇后
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

-- 修改后使停止运行
function addQueens2(a, n)
    if n>N then
        printQueens(a, N);
        os.exit(0);           -- 调用os.exit退出程序
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