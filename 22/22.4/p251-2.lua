a = 2
do
    local _ENV = {print = print, a = 14}
    print(a) --> 14
end
print(a) --> 2（回到原始的_ENV中）
