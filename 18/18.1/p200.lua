function allwords()
    local line = io.read() -- 当前行
    local pos = 1 -- 当前行的当前位置
    -- 迭代函数
    return function()
        while line do -- 当还有行时循环
            local w, e = string.match(line, "(%w+)()", pos)
            if w then -- 发现一个单词？
                pos = e -- 下一个位置位于该单词后
                return w -- 返回该单词
            else
                line = io.read() -- 没找到单词；尝试下一行
                pos = 1 -- 从第一个位置重新开始
            end
        end
        return nil -- 没有行了：迭代结束
    end
end

file = io.open("test.txt", "r")
io.input(file)

for word in allwords() do
    print(word)
end
