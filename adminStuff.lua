-- Teleports to player
Player1 = game.Workspace.P1.HumanoidRootPart.CFrame
Player2 = game.Workspace.P2.HumanoidRootPart.CFrame
game.Workspace.Player1.HumanoidRootPart.CFrame = game.Workspace.Player2.HumanoidRootPart.CFrame

-- Tinker with fire
local color = Color3.fromRGB(x,y,z)
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
local color = Color3.fromRGB(100,50,150)
local fireSize = 5
local pTable = game.Players:GetPlayers()
for i,v in pairs(pTable) do
  local fire = Instance.new("Fire")
  fire.Parent = v.Character.Head
  fire.Color = color
  fire.Size = fireSize
end

-- Find ClassName
local group = X:GetChildren()
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

-- INFINITE Fire or really just X amount
local amountOfFire = 1
local fireColor = Color3.fromRGB(x,y,z)
local fireSize = 5
local parentPart = nil
for i=1,amountOfFire do
  local fire = Instance.new("Fire")
  fire.Size = fireSize
  fire.Color = fireColor
  fire.Parent = parentPart
end

-- Transparent Heads For All!
local transparency = 1
local isFace = false
local pTable = game.Players:GetPlayers()
for i,v in pairs(pTable) do
	v.Character.Head.Transparency = transparency
	if isFace then
		v.Character.Head.face.Transparency = transparency
	else
		v.Character.Head.face.Transparency = 0
	end
end

-- Teleport all Players
local finalPosition = game.Players.P1.Character.HumanoidRootPart.CFrame
local pTable = game.Players:GetPlayers()
for i,v in pairs(pTable) do
	v.Character.HumanoidRootPart.CFrame = finalPosition
end

-- Transparent all players Hats minus me
local exlusionName = "NotInTheBand"
local isExclusion = true
local transparency = 1
local pTable = game.Players:GetPlayers()
for i,v in pairs(pTable) do
	if v.Name == exlusionName and isExclusion then
	else
		local cTable = v.Character:GetChildren()
		for j,k in pairs(cTable) do
			if k.ClassName == "Accessory" then
				k.Handle.Transparency = transparency
			end
		end
	end
end

-- Add Boombox to self
local soundVolume = 5
local soundEmmiterSize = 10
local soundMaxDistance = 10000
local soundPlaybackSpeed = 1
local soundTimePosition = 0
local soundID = "rbxassetid://"
local parentPart = game.Workspace.NotInTheBand.Head
local isSoundLooped = false
local soundPlaying = true
local sound = Instance.new("Sound")
sound.Parent = parentPart
sound.Volume = soundVolume
sound.EmitterSize = soundEmmiterSize
sound.MaxDistance = soundMaxDistance
sound.PlaybackSpeed = soundPlaybackSpeed
sound.TimePosition = soundTimePosition
sound.SoundId = soundID
sound.Playing = soundPlaying

-- Spawn Parts on Head
local player = "NotInTheBand"
local howManyParts = 1
local fireSize = 7
local color = Color3.fromRGB(100,25,200)
local isFire = true
local pTable = game.Players:GetPlayers()
for i,v in pairs(pTable) do
	if string.lower(v.Name) == string.lower(player) then
		for i=1,howManyParts do
			local part = Instance.new("Part")
			part.Parent = v.Character
			part.CFrame = v.Character.HumanoidRootPart.CFrame
			part.Color = color
			if isFire then
				local fire = Instance.new("Fire")
				fire.Parent = part
				fire.Color = color
				fire.Size = fireSize
			end
		end
	end
end

-- Set Health All
local isHealNotMax = false
local pTable = game.Players:GetPlayers()
local health = math.huge
for i,v in pairs(pTable) do
	if isHealNotMax then
		v.Character.Humanoid.Health = health
		else
		v.Character.Humanoid.MaxHealth = health
		v.Character.Humanoid.Health = health
	end
end