function readOnly(t)
    local proxy = {}
    -- 创建元表
    local mt = {
        __index = t,
        __newindex = function(t, k, v)
            error("attempt to update a read-only table", 2)
        end
    }
    setmetatable(proxy, mt)
    return proxy
end

days = readOnly {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
print(days[1]) --> Sunday
days[2] = "Noday" --> attempt to update a read-only table
