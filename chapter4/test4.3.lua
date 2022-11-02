-- 编写一个函数，使之实现在某个字符串的指定位置插入另一个字符


function insert(s, startIndex, str)
    if startIndex>#s then
        io.write("index out the length of s");
    end
    local s1 = s.sub(s,1,startIndex-1)
    local s2 = s.sub(s,startIndex,#s);
    return s1..str..s2;
end

print(insert("hello world",1, "start: "));
print(insert("hello world",7, "small "));