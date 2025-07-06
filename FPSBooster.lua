-- FPSBooster: Lag azaltıcı sistem

for _, v in pairs(workspace:GetDescendants()) do
    if v:IsA("Texture") or v:IsA("Decal") then
        v:Destroy()
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Enabled = false
    end
end

settings().Rendering.QualityLevel = 1