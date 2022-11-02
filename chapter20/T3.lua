local proxy={}
local mt={}
function readOnly(t)
	mt.__index=function (_,k) return rawget(t,k) end      -- 调用rawset方法
	mt.__newindex=function (t,k,v) error("attempt to update a read-only table",2) end
	setmetatable(proxy,mt)
	return proxy
end
days={"Sunday","Monday","Tuesday","Wednesday","Tursday","Friday","Saturday"}
days=readOnly(days)
print(days[1])
days[2]="Noday"
