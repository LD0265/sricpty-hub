local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("ElEmDee Hub") -- Creates the window

local b = w:CreateFolder('Autofarm(WIP)') -- Creates the folder(U will put here your buttons,etc)

local x = w:CreateFolder('Teleports(WIP)')

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
b:Dropdown("Choose Egg Type",{"Starter","Wood Egg","Jungle Egg","Forest Egg"},true,function(x) --true/false, replaces the current title "Dropdown" with the option that t
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


misc:DestroyGui()

function doaction()
    spawn(function()
        while getgenv().startaction == true  do 
           game:GetService("ReplicatedStorage").Events.Tap:InvokeServer()wait()
        end
    end)
end

function autorebirth()
    spawn(function()
        while getgenv().startrebirth == true  do 
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
