-- 忽略空格和标点

--在指定位置插入字符
function insert(s, startIndex, str)
    if startIndex>#s then
        io.write("index out the length of s");
    end
    local index = 0;
    while index<#s and startIndex>0 do
        index = index + 1;
        if s[index]~="" and s[index]~=","then
            startIndex = startIndex - 1;
        end
    end
    local s1 = s.sub(s,1,index-1)
    local s2 = s.sub(s,index,#s);
    return s1..str..s2;
end

--在指定位置插入字符

function remove(str, index, length)
    if(index>#str) then
        print("index is out the length of str!");
    end
    return str.sub(str,1,index-1)..str.sub(str,index+length);
end

function remove2(str, startIndex, length)
    if(startIndex>#str) then
        print("index is out the length of str!");
    end
    local index = 0;
    local newStr = str.sub(str,1,index-1);
    while index<#str and startIndex>0 do
        index = index + 1;
        if str[index]~="" or str[index]~=","then
            startIndex = startIndex - 1;
        end
    end
    local cnt = 0;
    for i = index,index+length do
        if i>#str then
            break;
        end
        if str[i] == " " or str[i] == "," then
            newStr = newStr..str[i];
            cnt = cnt + 1;
        end
    end
    newStr = newStr..str.sub(str,index+length+cnt);
end



--判断回文
function ispail(str)
    if string.reverse(str) == str then
        return true;
    end
    return false;
end

function ispail_ig(str)
    local str2 = str.gsub(",","");
    local str3 = str2.gsub(" ","");
    return ispail(str3);
end