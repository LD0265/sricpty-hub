--[ElEmDee]

if loaded then
    if op then
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
getgenv().poop = game:GetService("Workspace").Interactables.Poopies:GetDescendants()
getgenv().playerHead = game.Players.LocalPlayer.Character.Head
local w = library:CreateWindow("ElEmDee Hub") -- Creates the window

local b = w:CreateFolder("Main")
local t = w:CreateFolder('Teleports')
local x = w:CreateFolder('Owner Panel')
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

t:Button("Tp to Store",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Scenery.GasStation.GasStation.Part.CFrame
    end)

t:Button("Tp to House",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(130.98231506347656, 3.723323345184326, 31.293127059936523)
end)      

t:Button('TP to Garden',function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(236.9525909423828, 3.281747579574585, -21.483041763305664)
end)

t:Button('TP to Bunker',function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131.1385040283203, 3.1999974250793457, -67.97881317138672)
end)



x:Toggle("Ring Doorbell",function(bool)
   getgenv().startring = bool
      print('Action is: ', bool)
        if bool then
       doring()
   end
end)

x:Toggle("Spam Light",function(bool)
   getgenv().startflash = bool
      print('Action is: ', bool)
        if bool then
       doflash()
   end
end)

x:Toggle("Joe Annoy",function(bool)
   getgenv().startjoe = bool
      print('Action is: ', bool)
        if bool then
       dojoe()
   end
end)

x:Button('Open All Boxes',function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125.6509017944336, 3.7233223915100098, 40.92156982421875)
wait(.3)
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA('ProximityPrompt') and v.Parent.Parent.Name == 'Bottom' then
       fireproximityprompt(v)
    end
end
end)
x:Button("Crash Server",function()
        local crashserverthing = game.workspace:GetDescendants()
        
        for i,v in pairs(crashserverthing) do
            print(v)
            end
        end)
c:DestroyGui()
function doring()
    spawn(function()
        while getgenv().startring == true  do 
            fireclickdetector(game:GetService("Workspace").Interactables.Objects.Doorbell.Button.ClickDetector)
            wait()
        end
    end)
end
function doflash()
    spawn(function()
        while getgenv().startflash == true  do 
            fireproximityprompt(game:GetService("Workspace").Interactables.Objects.LightSwitchLivingR.BackBoard.Attachment.ProximityPrompt)
                fireproximityprompt(game:GetService("Workspace").Interactables.Objects.LightSwitchKitchen.BackBoard.Attachment.ProximityPrompt)
            wait()
        end
    end)
end

function dojoe()
    spawn(function()
        while getgenv().startjoe == true  do 
           -- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "PayRent"
}

game:GetService("ReplicatedStorage").RemoteEvents.Joe:FireServer(unpack(args))

            wait()
        end
    end)
end
        end
    else
    print('Failed')
    end

