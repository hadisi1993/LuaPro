-- goto���
-- goto��Lua5.2�Ժ���е�����

-- ʹ��goto���ģ��continue,���1~50�в���5��������
function simulate_continue_by_got()
    for i = 1,50 do
        if i%5==0 then
            goto continue;
        else
            print(i);
        end
        ::continue::;
    end
end





-- ʹ��goto���ģ��redo