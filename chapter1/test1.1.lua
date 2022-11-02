-- 阶乘函数
-- function fact(n)
--     if n == 0 then
--         return 1;
--     else 
--         return n*fact(n-1);
--     end
-- end


-- 修改后的函数
function fact(n)
    if n <=0 then
        return 1;
    else 
        return n*fact(n-1);
    end
end

print(fact(-3));