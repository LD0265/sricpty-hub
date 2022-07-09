local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("ElEmDee Hub") -- Creates the window

local b = w:CreateFolder("Combat")

local x = w:CreateFolder('Teleports')

local misc = w:CreateFolder('Misc')

b:Button("No Cooldown",function()
    local Cooldown; Cooldown = hookfunction(wait, function(v)
    v = 0;
    return Cooldown(v)
end)
end)

b:Toggle("Auto Clicker",function(bool)
   getgenv().startaction = bool
   print('Action is: ', bool)
   if bool then
       doaction()
   end
end)

b:Button("Infinite Jump",function()
        game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
        end)

x:Button("Tp to Yellow",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120, 27, -2)

end)

x:Button("Tp to Blue",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6, 27, 124)
end)

x:Button("Tp to Red",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-138, 30, -7)
end)

x:Button("Tp to Green",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 31, -125)
end)

misc:DestroyGui()




function doaction()
    spawn(function()
        while getgenv().startaction == true  do 
          mouse1click()
            wait(.5)
        end
    end)
end
