-- P214
local Set = {}
local mt = {} -- 集合的元表 P215

function Set.new(l) -- 第二个版本 P215
    local set = {}
    setmetatable(set, mt)
    for _, v in ipairs(l) do
        set[v] = true
    end
    return set
end

function Set.union(a, b)
    if getmetatable(a) ~= mt or getmetatable(b) ~= mt then -- P217
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

-- P216
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
-- s = s + 8 --> attempt to 'add' a set with a non-set value

-- P217
mt.__le = function(a, b) -- 子集
    for k in pairs(a) do
        if not b[k] then
            return false
        end
    end
    return true
end

mt.__lt = function(a, b) -- 真子集
    return a <= b and not (b <= a)
end

mt.__eq = function(a, b)
    return a <= b and b <= a
end

s1 = Set.new {2, 4}
s2 = Set.new {4, 10, 2}
print(s1 <= s2) --> true
print(s1 < s2) --> true
print(s1 >= s1) --> true
print(s1 > s1) --> false
print(s1 == s2 * s1) --> true

-- P219
mt.__tostring = Set.tostring
s1 = Set.new {10, 4, 5}
print(s1) --> {4, 5, 10}

-- P219
mt.__metatable = "not your business"
s1 = Set.new {}
print(getmetatable(s1)) --> not your business
setmetatable(s1, {}) --> cannot change a protected metatable
