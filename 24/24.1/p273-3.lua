co =
    coroutine.create(
    function(x)
        print("co1", x)
        print("co2", coroutine.yield())
    end
)

print(coroutine.resume(co, "hi"))
print(coroutine.resume(co, 4, 5))

--[[
co1     hi
true
co2     4       5
true
]]
