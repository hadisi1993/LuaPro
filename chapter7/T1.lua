-- ��ȡ�ı��ļ�������������д

-- ��ȡ���ò���
if arg[1]~=nil then
    io.input(arg[1]);
end

local lines = {};

-- ��������ȫ����ȡ��lines����
for line in io.lines() do
    lines[#lines+1] = line;
end


-- ����
table.sort(lines);

if arg[2]~=nil then
    io.output(arg[2]);
end

for _,l in ipairs(lines) do
    io.write(l, "\n");
end