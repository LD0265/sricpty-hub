--[ElEmDee]

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("ElEmDee Hub") -- Creates the window

local b = w:CreateFolder("Main")

local c = w:CreateFolder("Misc")-- Creates the folder(U will put here your buttons,etc)


b:Button("Auto Click Evyn",function()
    local peter = game:GetService("Workspace").Interactables.Peter.Peter.Clickable.DropMoney
        while wait() do
        fireclickdetector(peter)
    end
        end)
b:Button("Auto Collect Cash",function()
 while wait() do  
local money = game:GetService("Workspace").Interactables.MoneyBills:GetDescendants()
local playerHead = game.Players.LocalPlayer.Character.Head
local bag = game:GetService("Workspace").Interactables.BagFolder:GetDescendants()

for i,v in pairs(money) do
    if v.Name == 'TouchInterest' and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait()
        firetouchinterest(playerHead, v.Parent, 1)
    end
end
for i,v in pairs(bag) do
    if v.Name == 'TouchInterest' and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait()
        firetouchinterest(playerHead, v.Parent, 1)
    end
end
end
end)

b:Button("Tp to Store",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Scenery.GasStation.GasStation.Part.CFrame
    end)

b:Button("Tp to House",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Scenery.House.HouseModel.HouseFrame.Floor.CFrame
end)      

c:Button("Crash Server",function()
        local crashserverthing = game.workspace:GetDescendants()
        
        for i,v in pairs(crashserverthing) do
            print(v)
            end
        end)


c:DestroyGui()
