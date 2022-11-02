-- 编写一个函数将制定列表的所有元素插入另一个列表的指定位置
function insertTable(array1,array2,index)
    if #array1+1<index then
        return "index not exists";
    end
    for i = #array2, 1, -1 do
        table.insert(array1, index,array2[i]);
    end
    return unpack(array1);
end
local array1 = {1,2,3};
local array2 = {4,5,6};

do
    print(insertTable(array1,array2, 4));
end