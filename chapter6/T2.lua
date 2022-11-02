-- 返回可变参数除第一个元素之外的所有值

function returnAllExceptFirst(...)
    return select(2,...);
end

print(returnAllExceptFirst(1,2,3,4,5));