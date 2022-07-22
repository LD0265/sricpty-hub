local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local notif = Notification.new("success", "Success", "Executing Global Script")
wait(2)
--Made by : https://v3rmillion.net/member.php?action=profile&uid=507120
--Go vouch release thread : https://v3rmillion.net/showthread.php?tid=1040650

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("ElEmDee Hub") -- Creates the window

local b = w:CreateFolder("Global") -- Creates the folder(U will put here your buttons,etc)
local misc = w:CreateFolder('Misc')

b:Button("Ctrl Click Delete",function()
   local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Mouse.Target:Destroy()
    end)
end)


b:Button('Remote Spy',function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))()
    end)

b:Button('Infinite Jump',function()
      getgenv().InfiniteJumpEnabled = true

game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
      end)

b:Toggle("Fire All Click Detectors",function(bool)
   getgenv().startclick = bool
   print('Action is: ', bool)
   if bool then
       doclick()
   end
end)

b:Toggle("Fire Proximity Prompts",function(bool)
   getgenv().startpromt = bool
   print('Action is: ', bool)
   if bool then
       dopromt()
   end
end)


misc:DestroyGui()




function doclick()
    spawn(function()
        while getgenv().startclick == true  do 
            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA('ClickDetector') then
        fireclickdetector(v)
    end
end
            wait()
        end
    end)
end

function dopromt()
    spawn(function()
        while getgenv().startpromt == true  do 
            spawn(function()
           for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
               if v:IsA('ProximityPrompt') then
                   fireproximityprompt(v)
               end
           end
           end)
           wait()
        end
    end)
end

notif:deleteTimeout(3)
