local x = 3;
local y = 4;
local z = 5;

print( not z);

print((x and y and (not z)) or ((not y) and x));
print(x and y and not z or not y and x);