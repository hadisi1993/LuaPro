-- lua�������﷨��ʽ
-- ����ͺ�������Ϊ��
function accumulate(a)
    local sum = 0;
    for i = 1, #a do
        sum = sum + a[i];
    end
    return sum;
end

print(accumulate({1,2,3,4,5}));