local utils = {}

function utils.split(inputString, delimiter)
    if #inputString == 0 then
        error("Invalid input: input string cannot be empty")
    end

    if not delimiter or #delimiter == 0 then
        error("Invalid input: delimiter cannot be nil or empty")
    end

    local result = {}
    local currentElement = ''

    for i = 1, #inputString do
        local currentChar = inputString:sub(i, i)

        if currentChar == delimiter or i == #inputString then
            if i == #inputString and currentChar ~= delimiter then
                currentElement = currentElement .. currentChar
            end
            table.insert(result, currentElement)
            currentElement = ''
        else
            currentElement = currentElement .. currentChar
        end
    end

    return result
end

function splitStringIntoLines(inputString, width)
    lines = {}
    for i = 1, #inputString, width do
        local line = inputString:sub(i, i + width - 1)
        table.insert(lines, line)
    end
    return lines
end

function utils.printVerbose(itemId, item, itemCategory)
    local itemLines = splitStringIntoLines(item, 60)

    print(string.format("%-15s %-60s %-25s", itemId, itemLines[1], itemCategory))

    for i = 2, #itemLines do
        print(string.format("%-15s %-60s %-25s", "", itemLines[i], ""))
    end
end

return utils
