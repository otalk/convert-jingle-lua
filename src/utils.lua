local M = {}

function M.printTable(T)
    for _,line in pairs(T) do
        if type(line) == "table" then
            M.printTable(line)
        else
            print(line)
        end
    end
end

function indentString(indent)
    local indentString = "  "
    for i=1,indent do
        indentString = indentString .. "  "
    end
    return indentString
end

function M.tableString(T, indent)
    indent = indent or 0
    local string = "{\n"
    for key, value in pairs(T) do
        if type(value) == "table" then
            string = string .. indentString(indent) .. key .. "= " .. M.tableString(value, indent + 1) .. "\n"
        elseif type(value) == "boolean" then
            string = string .. indentString(indent) .. key .. "= " .. (value and "true" or "false") .. ",\n"
        else
            string = string .. indentString(indent) .. key .. "= " .. value .. ",\n"
        end
    end
    string = string .. indentString(indent) ..  "},"
    return string
end

function M.setMetatableRecursively(T, metatable)
    setmetatable(T, metatable)
    for _,value in pairs(T) do
        if type(value) == "table" then
            M.setMetatableRecursively(value, metatable)
        end
    end
end

function M.appendTable(t1, t2)
    for _, value in pairs(t2) do
        table.insert(t1, value)
    end
    return t1
end

function M.split(S, separator)
    local begin = 1
    local index = string.find(S, separator, begin, true)
    local array = {}
    while index do
        local sub = string.sub(S, begin, index - 1)
        table.insert(array, sub)
        begin = index + string.len(separator)
        index = string.find(S, separator, begin, true)
    end

    if table.getn(array) == 0 then
        table.insert(array, S)
    else
        local sub = string.sub(S, begin)
        table.insert(array, sub)
    end

    return array
end

return M
