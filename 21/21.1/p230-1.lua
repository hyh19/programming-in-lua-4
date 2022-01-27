Account = {
    balance = 0,
    withdraw = function(self, v)
        self.balance = self.balance - v
    end
}
function Account:deposit(v)
    self.balance = self.balance + v
end

local mt = {__index = Account}

function Account.new(o)
    o = o or {} -- 如果用户没有提供则创建一个新的表
    setmetatable(o, mt)
    return o
end

a = Account.new {balance = 0}
a:deposit(100.00)
print(a.balance) --> 100.0
