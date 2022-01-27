require "Account"
a = Account:new {}
a:deposit(100.00)
print(a:balance()) --> 100.0
