-- 10.1.4 函数 string.gmatch

s = "some string"
words = {}
for w in string.gmatch(s, "%a+") do
    words[#words + 1] = w
end

for index, value in ipairs(words) do
    print(index, value)
end

--[[
1       some
2       string
]]
