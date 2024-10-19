local utils = require("utils")

local edit = {}
function edit.editItem(filePath, editId, newValue, category)
    local file, error = io.open(filePath, "r")

    if error then
        print("ERROR:", error)
        return
    end

    local lines = file:lines()
    local linesTable = {}

    for line in lines do
        local itemId = utils.split(line, ",")[1]

        if itemId ~= editId then
            table.insert(linesTable, line)
        else
            local editedItem = string.format("%s,%s,%s", editId, newValue, category)
            table.insert(linesTable, editedItem)
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
    print("Todo Edited Successfully")

end

return edit
