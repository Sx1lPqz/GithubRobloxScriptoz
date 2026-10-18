local fileName = "Systematic1.txt"
local expectedSize = 4 * 1024 * 1024

if not isfile(fileName) then
    warn("File does not exist")
    return
end

local success, result = pcall(function()
    return readfile(fileName)
end)

if not success then
    warn("Read failed: " .. tostring(result))
    return
end

print("File exists: true")
print("Actual size: " .. #result .. " bytes")
print("Expected size: " .. expectedSize .. " bytes")
print("Correct size: " .. tostring(#result == expectedSize))
print("Content correct: " .. tostring(result == string.rep("A", expectedSize)))
