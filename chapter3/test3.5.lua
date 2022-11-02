-- 3.5 ²Î¿¼´ð°¸
function check(num)
    local base = 1.0;
    local res = num;
    local cnt = 0;
    while math.tointeger(res) == nil do
        base = base * 2;
        cnt = cnt + 1;
        if cnt==63 then
            io.write("Too big integeter!!!");
            return nil;
        end
        res = base*num;
    end
    return res;
end
check(12.7);
check(5.5);