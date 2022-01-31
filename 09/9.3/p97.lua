function sortbygrade(names, grades)
    table.sort(
        names,
        function(n1, n2)
            return grades[n1] > grades[n2] -- 比较分数
        end
    )
end

names = {"Peter", "Paul", "Mary"}
grades = {Mary = 10, Paul = 7, Peter = 8}

print("-- 排序前")
for index, value in ipairs(names) do
    print(index, value)
end

sortbygrade(names, grades)

print("-- 排序后")
for index, value in ipairs(names) do
    print(index, value)
end

--[[
-- 排序前
1       Peter
2       Paul
3       Mary
-- 排序后
1       Mary
2       Peter
3       Paul
]]
