Account = {balance = 0}

function Account:withdraw(v)
    self.balance = self.balance - v
end

function Account:deposit(v)
    self.balance = self.balance + v
end

function Account:new(o)
    o = o or {}
    self.__index = self
    setmetatable(o, self)
    return o
end

a = Account:new {balance = 0}
a:deposit(100.00)
print(a.balance) --> 100.0
