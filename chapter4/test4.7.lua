function ispail(str)
    if string.reverse(str) == str then
        return true;
    end
    return false;
end


print(ispail("abc"));