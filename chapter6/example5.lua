-- �жϿɱ䳤�������Ƿ���nil
-- table.pack������5.2�г���
function nonils(...)
    local arg = table.pack(...);
    for i = 1, arg.n  do
        if arg[i] == nil then 
            return false;
        end
    end
    return true;
end

t = {1,nil,2};
print(nonils{t});

