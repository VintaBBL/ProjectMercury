-- AutoBedBreak: Rakip yatakları otomatik kır

local function destroyBed(bed)
    if bed and bed:IsA("BasePart") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, bed, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, bed, 1)
    end
end

for _, obj in pairs(workspace:GetDescendants()) do
    if obj.Name:lower():find("bed") and obj:IsA("BasePart") then
        destroyBed(obj)
    end
end