-- ���ؿɱ���������һ��Ԫ��֮�������ֵ
-- unpack��lua5.1��Ϊȫ�ֺ���
function returnAllExceptLast(...)
    s = {...};
    s[#s] = nil;
    return unpack(s);
end

print(returnAllExceptLast(1,2,3,4,5));