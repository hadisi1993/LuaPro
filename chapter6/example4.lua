-- �ɱ䳤��������
-- ���ؿɱ䳤�������ܺ�
function getSumOfParams(...)
    local sum = 0;
    for _,v in ipairs{...} do
        sum=sum+v;
    end
    return sum;
end

print(getSumOfParams(9,19,29));