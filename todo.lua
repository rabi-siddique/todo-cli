file = io.open("todos", "a")

function addItem(item)
    local itemToAdd = string.format("%s\n", item)
    file:write(itemToAdd)
    file:close()
end

addItem("HELLO")
