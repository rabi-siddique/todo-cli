local utils = require("utils")
local add = {}
function add.addItem(filePath, item, category)
    local file, error = io.open(filePath, "a")

    if error then
        print("ERROR:", error)
        return
    end

    local itemID = tostring(os.time())
    local itemToAdd = string.format("%s,%s,%s\n", itemID, item, category)
    file:write(itemToAdd)
    file:close()

    if verbose then
        print("Todo Category:" .. category)
    end

    print("Todo Added Successfully!")
end

return add
