local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("ElEmDee Hub") -- Creates the window

local b = w:CreateFolder('Autofarm') -- Creates the folder(U will put here your buttons,etc)

local x = w:CreateFolder('Teleports')

local misc = w:CreateFolder('Misc')

b:Toggle("Auto Tap",function(bool)
   getgenv().startaction = bool
   print('Action is: ', bool)
   if bool then
       doaction()
   end
end)

b:Toggle("Auto Rebirth",function(bool)
   getgenv().startrebirth = bool
   print('Action is: ', bool)
   if bool then
       autorebirth()
   end
end)

local eggtype
b:Dropdown("Choose Egg Type",{"Starter (200)","Wood Egg (2500)","Jungle Egg (150k)","Forest Egg (1.5M)","Bee Egg (5M)","Swamp Egg (80M)","Snow Egg (800M)"},true,function(x) --true/false, replaces the current title "Dropdown" with the option that t
   eggtype = x
end)

b:Button("Buy Egg",function()
    local args = {
    [1] = {},
    [2] = eggtype,
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))

end)



x:Button('Teleport to Forest',function()
local args = {
    [1] = Vector3.new(-163.98446655273438, 987.5964965820312, -398.33941650390625)
}

game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))

end)

x:Button('Teleport to Flower',function()
local args = {
    [1] = Vector3.new(-179.51564025878906, 1524.6309814453125, -687.4987182617188)
}
game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
end)
x:Button('Teleport to Swamp',function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-263.997833, 2110.14429, -656.576355, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)
      
      

misc:DestroyGui()

function doaction()
    spawn(function()
        while getgenv().startaction == true  do 
           game:GetService("ReplicatedStorage").Events.Tap:FireServer()wait()
        end
    end)
end

function autorebirth()
    spawn(function()
        while getgenv().startrebirth == true  do 
            local args = {
    [1] = 100
}
game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
            wait()
           local args = {
    [1] = 20
}
game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
            wait()
            local args = {
    [1] = 10
}
game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
wait()
 local args = {
    [1] = 5
}
game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
wait()
local args = {
    [1] = 1
}
game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
wait()
        end
    end)
end
