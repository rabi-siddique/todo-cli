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

return utils
