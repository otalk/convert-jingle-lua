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

return M

