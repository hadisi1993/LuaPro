-- a.a.a.a
a = {};
a.a = a;
-- a.a.a.a ¾ÍÊÇ a
print(a, a.a.a.a);
-- a.a.a.a = 3
a.a.a.a = 3;
print(a.a.a.a);