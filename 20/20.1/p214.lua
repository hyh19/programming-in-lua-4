local Set = {}
local mt = {} -- 集合的元表

function Set.new(l) -- 第二个版本
    local set = {}
    setmetatable(set, mt)
    for _, v in ipairs(l) do
        set[v] = true
    end
    return set
end

function Set.union(a, b)
    if getmetatable(a) ~= mt or getmetatable(b) ~= mt then
        error("attempt to 'add' a set with a non-set value", 2)
    end

    local res = Set.new {}
    for k in pairs(a) do
        res[k] = true
    end
    for k in pairs(b) do
        res[k] = true
    end
    return res
end

function Set.intersection(a, b)
    local res = Set.new {}
    for k in pairs(a) do
        res[k] = b[k]
    end
    return res
end

-- 将集合表示为字符串
function Set.tostring(set)
    local l = {} -- 保存集合中所有元素的列表
    for e in pairs(set) do
        l[#l + 1] = tostring(e)
    end
    return "{" .. table.concat(l, ", ") .. "}"
end

s1 = Set.new {10, 20, 30, 50}
s2 = Set.new {30, 1}
print(getmetatable(s1)) --> table: 0x562120c96640
print(getmetatable(s2)) --> table: 0x562120c96640

mt.__add = Set.union
s3 = s1 + s2
print(Set.tostring(s3)) --> {1, 20, 30, 10, 50}

mt.__mul = Set.intersection
print(Set.tostring((s1 + s2) * s1)) --> {20, 50, 30, 10}

s = Set.new {1, 2, 3}
s = s + 8 --> attempt to 'add' a set with a non-set value
