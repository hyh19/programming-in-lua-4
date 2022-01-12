file = io.open("test.txt", "r")
io.input(file)

t = {}
for line in io.lines() do
    table.insert(t, line)
end

print(#t) --> 读取的行数
