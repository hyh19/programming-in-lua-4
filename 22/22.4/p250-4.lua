a = 1
local newgt = {} -- 创建新环境
setmetatable(newgt, {__index = _G})
_ENV = newgt -- 设置新环境
print(a) --> 1
