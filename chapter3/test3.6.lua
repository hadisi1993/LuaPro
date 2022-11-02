-- 圆锥体积计算公式
-- V = 1/3*S*h
-- S:底面积
-- h:高

function getVolume(h,angle)
    -- angle 为角度
    return 1/3*math.pi*(h^3)*(math.tan(math.rad(angle))^2);
end

