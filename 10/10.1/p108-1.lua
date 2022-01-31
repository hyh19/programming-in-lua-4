-- 10.1.3 函数 string.gsub

s = string.gsub("Lua is cute", "cute", "great")
print(s) --> Lua is great

s = string.gsub("all lii", "l", "x")
print(s) --> axx xii

s = string.gsub("Lua is great", "Sol", "Sun")
print(s) --> Lua is great

-- 限制替换的次数

s = string.gsub("all lii", "l", "x", 1)
print(s) --> axl lii

s = string.gsub("all lii", "l", "x", 2)
print(s) --> axx lii
