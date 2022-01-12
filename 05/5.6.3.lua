a = {"apple", "banana", "grape", "orange", "pear"}

for i = 1, #a do
    print(a[i])
end

print("----")

table.move(a, 2, #a, 1)
a[#a] = nil

for i = 1, #a do
    print(a[i])
end
