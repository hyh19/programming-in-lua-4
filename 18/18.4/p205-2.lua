lines = {
    ["luaH_set"] = 10,
    ["luaH_get"] = 24,
    ["luaH_present"] = 48
}

function pairsBykeys(t, f)
    local a = {}

    for n in pairs(t) do -- 创建一个包含所有键的表
        a[#a + 1] = n
    end

    table.sort(a, f) -- 对列表排序

    local i = 0 -- 迭代变量

    -- 迭代函数
    return function()
        i = i + 1
        return a[i], t[a[i]] -- 返回键和值
    end
end

for name, line in pairsBykeys(lines) do
    print(name, line)
end

--[[
luaH_get        24
luaH_present    48
luaH_set        10
]]
