function getfield(f)
    local v = _G -- 从全局表开始
    for w in string.gmatch(f, "[%a_][%w_]*") do
        v = v[w]
    end
    return v
end

print(getfield("io.read")) --> function: 0x557e2b96d1f0
