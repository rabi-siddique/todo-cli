local utils = require("utils")
local show = {}

function showByCategory(fileLines, verbose, category)
    for line in fileLines do
        local itemId, item, itemCategory = table.unpack(utils.split(line, ","))

        if itemCategory == category then
            if verbose then
                utils.printVerbose(itemId, item, itemCategory)
            else
                print("- " .. item)
            end
        end

    end
end

function showAll(fileLines, verbose)
    for line in fileLines do
        local itemId, item, itemCategory = table.unpack(utils.split(line, ","))

        if verbose then
            utils.printVerbose(itemId, item, itemCategory)
        else
            print("- " .. item)
        end

    end
end
function show.showItems(filePath, verbose, category)
    local file, error = io.open(filePath, "r")

    if not file then
        print("No Todo Items")
        if error and verbose then
            print("ERROR:", error)
        end
        return
    end

    local lines = file:lines()

    if category == 'None' then
        showAll(lines, verbose)
    else
        showByCategory(lines, verbose, category)
    end

    file:close()

end

return show
