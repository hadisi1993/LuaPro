-- ʵ��table.concat����

function MyTableConcat(array)
    local res = "";
    for _,v in pairs(array) do
        res = res..v;
    end
    return res;
end

print(MyTableConcat({"hello"," ","world"}));

-- �Ƚ��ٶ�
local array = {};
for i = 1,100000 do
    array[i] = tostring(i);
end
local s = os.clock();
local res = table.concat(array);
local e = os.clock();
print("time 1 :",tostring(e-s));
local s = os.clock();
local res = MyTableConcat(array);
local e = os.clock();
print("time 2 :",tostring(e-s));
-- Lua���ַ����ǲ��ɱ�ģ�ÿһ�ν������Ӳ���֮����ʵ�Ͳ������µ��ַ�����������ԭ�����Ǹ��ˡ�
-- ���ǣ��������ӣ��Ͳ��ϲ����µ��ַ������������ַ�������Ҫ���Ʋ������������Ӳ����Ĳ��Ͻ��У��ַ���Խ��Խ�󣬸��Ʋ���Ҳ��Խ��Խ��ʱ��