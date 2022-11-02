--实现方式1
local str = 
[==[
<!CDATA[
    Hello world
]]>
]==]

local str2 = "<![CDATA[\n\tHello world\n]]>"
print(str);
print(str2);