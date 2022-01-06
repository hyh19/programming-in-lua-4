file = assert(io.open("test.txt", "r"))
io.input(file)

for block in io.input():lines(2 ^ 13) do
    io.write(block)
end
