Account = {balance = 0}
function Account.withdraw(self, v)
    self.balance = self.balance - v
end

a1 = Account
Account = nil
a1.withdraw(a1, 100.00) --> OK
