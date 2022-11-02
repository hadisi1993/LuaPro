-- 为T1中的迭代器添加步长

function iter(t,n)
    n = n+t[2];
    if n<=t[1] then
        return n;
    end
end

function fromto(n,m,step)
    return iter,{m,step},n-step;    
end

do 
    for value in fromto(0,10,2) do
        print(value);
    end
end