network = {
    {name = "grauna", IP = "210.26.30.34"},
    {name = "arraial", IP = "210.26.30.23"},
    {name = "lua", IP = "210.26.23.12"},
    {name = "derain", IP = "210.26.23.20"}
}

print("-- 排序前")
for _, t in ipairs(network) do
    print(t.name)
end

table.sort(
    network,
    function(a, b)
        return (a.name > b.name)
    end
)

print("-- 排序后")
for _, t in ipairs(network) do
    print(t.name)
end
