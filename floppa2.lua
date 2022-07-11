local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("ElEmDee Hub") -- Creates the window
local petflop = game:GetService("Workspace").Floppa.HumanoidRootPart.ProximityPrompt
local b = w:CreateFolder("Toggles") -- Creates the folder(U will put here your buttons,etc)
local x = w:CreateFolder("Buttons")
local misc = w:CreateFolder('Misc')


local function fireproximityprompt(Obj, Amount, Skip)
    if Obj.ClassName == "ProximityPrompt" then 
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then 
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do 
            Obj:InputHoldBegin()
            if not Skip then 
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    else 
        error("userdata<ProximityPrompt> expected")
    end
end


b:Toggle("Autoclick Floppa",function(bool)
   getgenv().startaction = bool
   print('Action is: ', bool)
   if bool then
       doaction()
   end
end)

x:Button("Collect Cash",function()
   while wait() do
    spawn(function()
     
         local money = game:GetService("Workspace"):GetDescendants()
        local playerHead = game.Players.LocalPlayer.Character.Head
    for i,v in pairs(money) do
    if v.Name == 'TouchInterest' and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait()
        firetouchinterest(playerHead, v.Parent, 1)
    end

end
end)
end
end)

x:Button('Pet Floppa',function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Floppa.Head.CFrame
wait(.1)
fireproximityprompt(petflop,1,true)
end)

x:Toggle("Auto Pet Floppa",function(bool)
   getgenv().startpet = bool
   print('Action is: ', bool)
   if bool then
       dopet()
   end
end)

misc:DestroyGui()



function doaction()
    spawn(function()
        while getgenv().startaction == true  do 
           local flopclick = game:GetService("Workspace").Floppa.ClickDetector
fireclickdetector(flopclick)
wait()
        end
    end)
end

function dopet()
    spawn(function()
        while getgenv().startpet == true  do 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Floppa.Head.CFrame
wait(.1)
fireproximityprompt(petflop,1,true)
wait(3)
        end
    end)
end
