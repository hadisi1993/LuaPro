-- 问输出是什么？
sunday = "monday";
monday = "sunday";
t = {sunday = "monday", [sunday] = monday};
print(t.sunday, t[sunday], t[t.sunday]);