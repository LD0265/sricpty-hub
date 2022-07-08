local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Floppa Farm") -- Creates the window

local b = w:CreateFolder("Sheesh") -- Creates the folder(U will put here your buttons,etc)

b:Label("n wor",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
}) 

b:Toggle("Autoclick floppa",function(bool)
   getgenv().startaction = bool
   print('Action is: ', bool)
   if bool then
       doaction()
   end
end)

b:DestroyGui()

function doaction()
    spawn(function()
        while getgenv().startaction == true  do 
           local floppa = game:GetService("Workspace").Floppa.ClickDetector
            fireclickdetector(floppa)
            wait()
        end
    end)
end
