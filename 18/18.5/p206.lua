function allwords(f)
    for line in io.lines() do
        for word in string.gmatch(line, "%w+") do
            f(word) -- 调用函数
        end
    end
end

file = io.open("test.txt", "r")
io.input(file)

allwords(print)

-- 重新回到文件开头
file:seek("set")

local count = 0

allwords(
    function(w)
        if w == "hello" then
            count = count + 1
        end
    end
)

print(count)
