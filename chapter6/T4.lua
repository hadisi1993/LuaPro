-- ����һ��ָ��������
-- �����ҷ����˳����һ��bug
function shuffle(array)
    -- ʹ��ϴ���㷨
    math.randomseed(os.time())
    for i = #array,1,-1 do
       local index = math.random(i);
       -- print(i,#array);
       array[i], array[index] = array[index], array[i];
    end
    return unpack(array);
end


print(shuffle({1,2,3,4,5,6,7,8,9,10}));