local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("ElEmDee pete farm") -- Creates the window

local b = w:CreateFolder("evyn fat")

local c = w:CreateFolder("misc")-- Creates the folder(U will put here your buttons,etc)

b:Label("Autofarm",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Button("Auto Click Evyn",function()
    local peter = game:GetService("Workspace").Interactables.Peter.Peter.Clickable.DropMoney

    while wait(0.0000000000001) do
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

c:DestroyGui()
