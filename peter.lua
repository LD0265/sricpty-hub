--[ElEmDee]

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("ElEmDee Hub") -- Creates the window

local b = w:CreateFolder("Main")

local c = w:CreateFolder("Misc")-- Creates the folder(U will put here your buttons,etc)

b:Label("Autofarm",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Toggle("Auto Click Peter",function(bool)
   getgenv().startclick = bool
   print('Action is: ', bool)
   if bool then
       clickpeter()
   end
end)

b:Toggle("Auto Collect Cash",function(bool)
   getgenv().startclick = bool
   print('Action is: ', bool)
   if bool then
       clickpeter()
   end
end)

b:Button("Tp to Store",function()
    game:GetService("Workspace").LMD2017.HumanoidRootPart.CFrame = game:GetService("Workspace").Scenery.GasStation.GasStation.Part.CFrame
    end)
b:Button("Tp to House",function()
    game:GetService("Workspace").LMD2017.HumanoidRootPart.CFrame = game:GetService("Workspace").Scenery.House.HouseModel.HouseFrame.Floor.CFrame
end)     
c:DestroyGui()




function clickpeter()
    spawn(function()
        while getgenv().startclick == true  do 
            local peter = game:GetService("Workspace").Interactables.Peter.Peter.Clickable.DropMoney
            fireclickdetector(peter)
            wait()
        end
    end)
end

function collectcash()
    spawn(function()
        while getgenv().startcollect == true  do 
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
end
