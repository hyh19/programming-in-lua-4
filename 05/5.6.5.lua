a = {"apple", "banana"}
b = {"cat", "tiger"}

table.move(a, 1, #a, #b + 1, b)

for i = 1, #b do
    print(b[i])
end
