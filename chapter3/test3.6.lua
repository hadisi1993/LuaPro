-- Բ׶������㹫ʽ
-- V = 1/3*S*h
-- S:�����
-- h:��

function getVolume(h,angle)
    -- angle Ϊ�Ƕ�
    return 1/3*math.pi*(h^3)*(math.tan(math.rad(angle))^2);
end

