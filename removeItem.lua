local utils = require("utils")
local remove = {}
function remove.removeItem(filePath, deleteId)
    local file, error = io.open(filePath, "r")

    if error then
        print("ERROR:", error)
        return
    end

    local lines = file:lines()
    local linesTable = {}

    for line in lines do
        local lineSplitTable = utils.split(line, ",")
        local itemId, _, _ = table.unpack(lineSplitTable)
        if itemId ~= deleteId then
            table.insert(linesTable, line)
        end
    end

    file:close()
    file, error = io.open(filePath, "w")

    if error then
        print("ERROR:", error)
        return
    end

    for _, line in ipairs(linesTable) do
        local itemToAdd = string.format("%s\n", line)
        file:write(itemToAdd)
    end
    file:close()
    print("Todo Removed Successfully")

end

return remove
