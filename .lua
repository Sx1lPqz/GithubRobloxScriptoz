local folderPrefix = "Systemer"
local totalFolders = 25000000
local filesPerFolder = 25000000
local fileSize = 4000000 -- 1 KiB per file

local function randomText(size)
    local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 "
    local output = {}

    for i = 1, size do
        local index = math.random(1, #chars)
        output[i] = chars:sub(index, index)
    end

    return table.concat(output)
end

for folderIndex = 1, totalFolders do
    local folderName = folderPrefix .. folderIndex

    if not isfolder(folderName) then
        makefolder(folderName)
    end

    for fileIndex = 1, filesPerFolder do
        local extension

        if fileIndex % 3 == 1 then
            extension = ".txt"
        elseif fileIndex % 3 == 2 then
            extension = ".bat"
        else
            extension = ".json"
        end

        local fileName = folderName .. "/File" .. fileIndex .. extension
        local content

        if extension == ".json" then
            content = '{"data":"' .. string.rep("A", fileSize - 12) .. '"}'
        else
            content = randomText(fileSize)
        end

        local success, err = pcall(function()
            writefile(fileName, content)
        end)

        if not success then
            warn("Write failed:", fileName, tostring(err))
        end
    end
end

print("Stress test completed.")
