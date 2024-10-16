function addItem(item)
    local file = io.open("todos", "a")
    local itemToAdd = string.format("%s\n", item)
    file:write(itemToAdd)
    file:close()
end

function removeItem(item)
    local file = io.open("todos", "r")
    local lines = file:lines()
    local linesTable = {}

    for line in lines do
        if line ~= item then
            table.insert(linesTable, line)
        end
    end
    file:close()

    file = io.open("todos", "w")
    for _, line in ipairs(linesTable) do
        local itemToAdd = string.format("%s\n", line)
        file:write(itemToAdd)
    end
    file:close()

end

function showItems()
    local file = io.open("todos", "r")
    local lines = file:lines()

    for line in lines do
        print(line)
    end
    
    file:close()
end

showItems()