a = {"apple", "banana", "orange"}

b = table.move(a, 1, #a, 1, {})

for i = 1, #b do
    print(b[i])
end

print("a == b", a == b)
