-- 返回可变参数除最后一个元素之外的所有值
-- unpack在lua5.1中为全局函数
function returnAllExceptLast(...)
    s = {...};
    s[#s] = nil;
    return unpack(s);
end

print(returnAllExceptLast(1,2,3,4,5));