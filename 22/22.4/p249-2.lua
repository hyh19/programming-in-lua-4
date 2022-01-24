a = 13 -- 全局的
local a = 12
print(a) ---> 12（局部的）
print(_ENV.a) --> 13（全局的）
