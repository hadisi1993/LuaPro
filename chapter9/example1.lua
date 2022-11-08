-- 区域的并集
function union(r1, r2)
    return function(x,y )
        return r1(x,y) or r2(x,y);
    end
end

-- 