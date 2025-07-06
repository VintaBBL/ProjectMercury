-- Project Mercury Patch: Gelişmiş sistemleri ekle

local MercuryModules = {
    "AutoBedBreak",
    "AntiBanBypass",
    "CustomReach",
    "SafeKillAura",
    "SmartESP",
    "FPSBooster",
}

for _, mod in ipairs(MercuryModules) do
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Vortyxflare/ProjectMercury/main/Modules/" .. mod .. ".lua"))()
    end)
    if not success then
        warn("[Mercury] Failed to load module:", mod, err)
    end
end

-- GUI başlığını "Project Mercury" yap
local CoreGui = game:GetService("CoreGui")
local GUI = CoreGui:FindFirstChild("Vape") or CoreGui:FindFirstChildOfClass("ScreenGui")
if GUI then
    local title = GUI:FindFirstChildWhichIsA("TextLabel", true)
    if title then
        title.Text = "☿ Project Mercury"
    end
end