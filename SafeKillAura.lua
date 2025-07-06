-- SafeKillAura: Otomatik saldırı (yakındaki düşmanlara)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local range = 8

game:GetService("RunService").RenderStepped:Connect(function()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Team ~= LocalPlayer.Team and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance < range then
                firetouchinterest(LocalPlayer.Character.HumanoidRootPart, player.Character.HumanoidRootPart, 0)
                firetouchinterest(LocalPlayer.Character.HumanoidRootPart, player.Character.HumanoidRootPart, 1)
            end
        end
    end
end)