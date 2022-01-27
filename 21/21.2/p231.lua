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

SpecialAccount = Account:new()

s = SpecialAccount:new {limit = 1000.00}
s:deposit(100.00)
print(s.balance) --> 100.0
