-- 实现一个Stack类
-- 方法包括push、pop、top、isempty
Stock = {};

function Stock:new(l)
    local set = l or {};
    self.__index = self;
    setmetatable(set, self);
    return set;
end

function Stock:push(newElement)
    table.insert(self, newElement);
end

function Stock:top()
    if #self >0 then
        return self[#self];
    else
        error("The Stock is Empty!");
    end
end

function Stock:pop()
    if #self == 0 then
        error("The Stock is empty!");
    else
        table.remove(self);
    end
end

function Stock:isempty()
    return #self==0;
end

function Stock:tostring()
    return "{"..table.concat(self,", ").."}";
end

return Stock;