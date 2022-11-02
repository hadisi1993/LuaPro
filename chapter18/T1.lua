-- 编写一个迭代器fromto，使得如下循环与数值型for等价
-- 使用无状态迭代器实现
-- function fromto(n,m)
--     local s = n-1;
--     return function()
--         while s<m do
--             s = s+1;
--             return s;    
--         end
--     end
-- end

function iter(t,n)
    n = n+1;
    if n<=t[2] then
        return n;
    end
end

function fromto(n,m)
    return iter,{n,m},n-1;    
end

do 
    for value in fromto(0,10) do
        print(value);
    end
end