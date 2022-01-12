a = {"apple", "banana", "grape", "orange", "pear"}

for i = 1, #a do
    print(a[i])
end

print("----")

table.move(a, 1, #a, 2)
a[1] = "cat"

for i = 1, #a do
    print(a[i])
end
