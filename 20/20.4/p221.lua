-- 创建具有默认值的原型
prototype = {x = 0, y = 8, width = 100, height = 100}

local mt = {} -- 创建一个元表

function new(o) -- 声明构造函数
    setmetatable(o, mt)
    return o
end

mt.__index = prototype

w = new {x = 10, y = 20}
print(w.width) --> 100
