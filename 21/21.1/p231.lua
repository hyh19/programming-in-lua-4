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

b = Account:new()
print(b.balance) --> 0

b:deposit(100.00)
print(b.balance) --> 100.0
