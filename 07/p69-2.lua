file = io.open("test.txt", "r")
io.input(file)

t = io.read("a") -- 读取整个文件
t = string.gsub(t, "bad", "good") -- 进行处理
io.write(t) -- 输出结果

--[[ test.txt
bad
]]
