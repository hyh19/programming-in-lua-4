file = io.open("test.txt", "r")
io.input(file)

while true do
    local n1, n2, n3 = io.read("n", "n", "n")
    if not n1 then
        break
    end
    print(math.max(n1, n2, n3))
end

--[[ test.txt
6.0         -3.23       15e12
234         4.3         1000001
]]
