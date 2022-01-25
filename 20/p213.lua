t = {}
print(getmetatable(t)) --> nil

t1 = {}
setmetatable(t, t1)
print(getmetatable(t) == t1) --> true

print(getmetatable("hi")) --> table: 0x5633c1b77d30
print(getmetatable("xuxu")) --> table: 0x5633c1b77d30
print(getmetatable(10)) --> nil
print(getmetatable(print)) --> nil
