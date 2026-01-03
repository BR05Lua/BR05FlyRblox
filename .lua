local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

-- Client only. If you put this script in a server location by mistake, it will do nothing there.
if RunService:IsServer() then
    return
end

local player = Players.LocalPlayer
if not player then
    return
end

local playerGui = player:WaitForChild("PlayerGui")

-- Loader wide run once guard
local LOADER_MARKER = "StepsLoader_RanOnce"
if playerGui:FindFirstChild(LOADER_MARKER) then
    return
end
do
    local m = Instance.new("BoolValue")
    m.Name = LOADER_MARKER
    m.Value = true
    m.Parent = playerGui
end

local function canRunStep(stepName)
    local markerName = "StepsLoader_Marker_" .. tostring(stepName)

    if playerGui:FindFirstChild(markerName) then
        return false
    end

    local marker = Instance.new("BoolValue")
    marker.Name = markerName
    marker.Value = true
    marker.Parent = playerGui

    return true
end

local steps = {
    {
        name = "Main Menu",
        run = function()
            if not canRunStep("Main Menu") then
                return
            end

            -- put your Main Menu code here
			loadstring(game:HttpGet("https://raw.githubusercontent.com/BR05Lua/SOS/refs/heads/main/SOSMenu.lua"))()
        end,
        delayAfter = 0.5,
    },
    {
        name = "Tag System",
        run = function()
            if not canRunStep("Tag System") then
                return
            end

            -- put your Tag System code here
			loadstring(game:HttpGet("https://raw.githubusercontent.com/BR05Lua/SOS/refs/heads/main/BR05TagSystem.lua"))()
        end,
    },
}

for i, step in ipairs(steps) do
    local ok, err = pcall(step.run)
    if not ok then
        warn("Loader failed at index", i, step.name, err)
        break
    end

    if type(step.delayAfter) == "number" and step.delayAfter > 0 then
        task.wait(step.delayAfter)
    end
end

print("Fully Loaded.")
print("Thanks To Co Owner For Making The New Loadstring System.")
