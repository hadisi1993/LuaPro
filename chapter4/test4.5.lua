function remove(str, index, length)
    if(index>#str) then
        print("index is out the length of str!");
    end
    return str.sub(str,1,index-1)..str.sub(str,index+length);
end

print(remove("hello world",7,4));