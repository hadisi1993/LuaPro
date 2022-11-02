-- 打乱一个指定的数组
-- 这里我发现了程序的一个bug
function shuffle(array)
    -- 使用洗牌算法
    math.randomseed(os.time())
    for i = #array,1,-1 do
       local index = math.random(i);
       -- print(i,#array);
       array[i], array[index] = array[index], array[i];
    end
    return unpack(array);
end


print(shuffle({1,2,3,4,5,6,7,8,9,10}));