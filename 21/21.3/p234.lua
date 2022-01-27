-- Account

Account = {balance = 0}

function Account:new(o)
    o = o or {}
    self.__index = self
    setmetatable(o, self)
    return o
end

function Account:deposit(v)
    self.balance = self.balance + v
end

function Account:withdraw(v)
    if v > self.balance then
        error "insufficient funds"
    end
    self.balance = self.balance - v
end

-- Named

Named = {}

function Named:getname()
    return self.name
end

function Named:setname(n)
    self.name = n
end

-- 多重继承

-- 在表'plist'的列表中查找'k'
local function search(k, plist)
    for i = 1, #plist do
        local v = plist[i][k] -- 尝试第'i'个超类
        if v then
            return v
        end
    end
end

function createClass(...)
    local c = {} -- 新类
    local parents = {...} -- 父类列表

    -- 在父类列表中查找类缺失的方法
    setmetatable(
        c,
        {
            __index = function(t, k)
                local v = search(k, parents)
                t[k] = v -- 保存下来用于下次访问 P235
                return v
            end
        }
    )

    -- 将'c'作为其实例的元表
    c.__index = c

    -- 为新类定义一个新的构造函数
    function c:new(o)
        o = o or {}
        setmetatable(o, c)
        return o
    end

    return c -- 返回新类
end

-- 测试

NamedAccount = createClass(Account, Named)

account = NamedAccount:new {name = "Paul"}
print(account:getname()) --> Paul
