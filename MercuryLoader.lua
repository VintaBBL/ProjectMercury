-- Project Mercury Loader - Loadstring bu dosyaya gider

local Success, err = pcall(function()

    -- VapeVoidware GUI'yi yükle
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VWRewrite/main/NewMainScript.lua"))()

    -- Project Mercury modüllerini yükle
    task.wait(2)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vortyxflare/ProjectMercury/main/MercuryPatch.lua"))()
end)

if not Success then
    warn("[Project Mercury] Loader failed:", err)
end