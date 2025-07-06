-- CustomReach: Extended hit range

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReachRange = 12

game:GetService("RunService").Heartbeat:Connect(function()
    for _, enemy in pairs(Players:GetPlayers()) do
        if enemy ~= LocalPlayer and enemy.Character and enemy.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (enemy.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance <= ReachRange then
                firetouchinterest(LocalPlayer.Character.HumanoidRootPart, enemy.Character.HumanoidRootPart, 0)
                firetouchinterest(LocalPlayer.Character.HumanoidRootPart, enemy.Character.HumanoidRootPart, 1)
            end
        end
    end
end)