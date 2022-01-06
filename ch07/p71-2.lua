file = io.open("test.txt", "r")
io.input(file)

while true do
    local block = io.read(2 ^ 13) -- 块大小是8KB
    if not block then
        break
    end
    io.write(block)
end

--[[ test.txt
cat
boy
apple
]]
