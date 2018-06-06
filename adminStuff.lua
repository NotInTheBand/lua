-- Teleports to player
Player1 = game.Workspace.P1.HumanoidRootPart.CFrame
Player2 = game.Workspace.P2.HumanoidRootPart.CFrame
game.Workspace.Player1.HumanoidRootPart.CFrame = game.Workspace.Player2.HumanoidRootPart.CFrame

-- Tinker with fire
fireParent = game.Workspace
local fire = Instance.new("Fire")
fire.Parent = fireParent
fire.Color = Color3.fromRGB(255,255,255)
