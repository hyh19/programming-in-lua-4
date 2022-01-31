co =
    coroutine.create(
    function(a, b)
        print("co", a, b)
        coroutine.yield(a + b, a - b)
    end
)
print(coroutine.resume(co, 20, 10))

--[[
co      20      10
true    30      10
]]
