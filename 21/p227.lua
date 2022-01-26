Account = {balance = 0}
function Account.withdraw(v)
    Account.balance = Account.balance - v
end

Account.withdraw(100.0)
print(Account.balance) --> -100.0

a, Account = Account, nil
a.withdraw(100.00) --> attempt to index a nil value (global 'Account')
