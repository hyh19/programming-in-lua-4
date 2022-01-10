local f = assert(io.open("test.txt", "r"))
print(f:read("a"))
f:close()

io.stderr:write("Error Message\n")
