Account = {balance = 0}
function Account:withdraw(v)
    self.balance = self.balance - v
end

a2 = {balance = 0, withdraw = Account.withdraw}
a2:withdraw(260.00)
