-- AntiBanBypass: Basic detection bypass system

local function disableAC()
    for _, v in pairs(getgc(true)) do
        if type(v) == "function" and getfenv(v).script and tostring(getfenv(v).script):lower():find("anticheat") then
            hookfunction(v, function() return end)
        end
    end
end

disableAC()