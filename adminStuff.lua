-- Teleports to player
Player1 = game.Workspace.P1.HumanoidRootPart.CFrame
Player2 = game.Workspace.P2.HumanoidRootPart.CFrame
game.Workspace.Player1.HumanoidRootPart.CFrame = game.Workspace.Player2.HumanoidRootPart.CFrame

-- Tinker with fire
local color = Color3.fromRGB(255,255,255)
local fireParent = game.Workspace
local fire = Instance.new("Fire")
fire.Parent = fireParent
fire.Color = color

-- CC
local saturation = 0
local contrast = 0
local colorCorrection = Instance.new("ColorCorrectionEffect")
colorCorrection.Parent = game.Lighting
colorCorrection.Saturation = saturation
colorCorrection.Contrast = contrast


-- Burn their heads!
local color = Color3.fromRGB(255,255,255)
local fireSize = 5
local fire = Instance.new("Fire")
pTable = game.Players:GetPlayers()
for i,v in pairs(pTable) do
  fire.Parent = v.Character.Head
  fire.Color = color
  fire.Size = fireSize
end
