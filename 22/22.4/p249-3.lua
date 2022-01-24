a = 13 -- 全局的
local a = 12
print(a) ---> 12（局部的）
print(_G.a) --> 13（全局的）
