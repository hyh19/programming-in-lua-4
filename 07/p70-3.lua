file = io.open("test.txt", "r")
io.input(file)

local count = 0
for line in io.lines() do
    count = count + 1
    io.write(string.format("%6d ", count), line, "\n")
end

--[[ test.txt
bad
]]
