local GameName = "AutoGetPoltergeist - by nexer"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "nexer script >:]", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Auto Get Poltergeist",
	Default = true,
	Callback = function(Value)
		_G.AutoSlapAll = Value
while _G.AutoSlapAll do
for i,v in pairs(workspace.Enemies:GetChildren()) do
if v:FindFirstChild("HumanoidRootPart") then
game:GetService("ReplicatedStorage").Remotes.GeneralHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
task.wait(0.15)
end
	end    
})
