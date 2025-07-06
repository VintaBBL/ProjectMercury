-- SmartESP: Düşmanları göster

local function highlightPlayer(player)
    local char = player.Character
    if char and not char:FindFirstChild("ESPBox") then
        local highlight = Instance.new("Highlight", char)
        highlight.Name = "ESPBox"
        highlight.FillColor = Color3.fromRGB(255, 50, 50)
        highlight.OutlineColor = Color3.new(1, 1, 1)
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    end
end

for _, player in pairs(game:GetService("Players"):GetPlayers()) do
    if player ~= game.Players.LocalPlayer then
        highlightPlayer(player)
    end
end

game:GetService("Players").PlayerAdded:Connect(highlightPlayer)