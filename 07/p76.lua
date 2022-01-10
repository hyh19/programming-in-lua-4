local f = io.popen("ls .", "r")
local dir = {}
for entry in f:lines() do
    dir[#dir + 1] = entry
end

-- 输出所有的文件名
for _, l in ipairs(dir) do
    io.write(l, "\n")
end
