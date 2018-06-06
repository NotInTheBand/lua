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
local pTable = game.Players:GetPlayers()
for i,v in pairs(pTable) do
  local fire = Instance.new("Fire")
  fire.Parent = v.Character.Head
  fire.Color = color
  fire.Size = fireSize
end

-- Find ClassName
local group = game.Workspace.X:GetChildren()
local className = ""
for i,v in pairs(group) do
  if v.ClassName == className then
    v
  end
end

-- Remove Fire Heads
local pTable = game.Players:GetPlayers()
for i,v in pairs(pTable) do
  local headTable = v.Character.Head:GetChildren()
  for j,k in pairs(headTable) do
    if k.ClassName == "Fire" then
      k:Destroy()
    end
  end
end
