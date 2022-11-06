-- goto语句
-- goto是Lua5.2以后才有的特性

-- 使用goto语句模拟continue,输出1~50中不被5整除的数
function simulate_continue_by_got()
    for i = 1,50 do
        if i%5==0 then
            goto continue;
        else
            print(i);
        end
        ::continue::;
    end
end





-- 使用goto语句模拟redo