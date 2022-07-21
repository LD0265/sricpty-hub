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

b:Button('ESP',function()

assert(Drawing, "missing dependency: drawing");

-- services
local run_service = game:GetService("RunService");
local players = game:GetService("Players");
local workspace = game:GetService("Workspace");

-- variables
local camera = workspace.CurrentCamera;
local get_pivot = workspace.GetPivot;
local wtvp = camera.WorldToViewportPoint;
local viewport_size = camera.ViewportSize;
local localplayer = players.LocalPlayer;
local cache = {};

-- locals
local new_drawing = Drawing.new;
local new_vector2 = Vector2.new;
local new_color3 = Color3.new;
local rad = math.rad;
local tan = math.tan;
local floor = math.floor;

-- functions
local function create_esp(player)
    local esp = {};

    esp.box = new_drawing("Square");
    esp.box.Color = new_color3(1,1,1);
    esp.box.Thickness = 1;
    
    esp.tracer = new_drawing("Line");
    esp.tracer.Color = new_color3(1,1,1);
    esp.tracer.Thickness = 1;

    esp.name = new_drawing("Text");
    esp.name.Color = new_color3(1,1,1);
    esp.name.Size = 14;
    esp.name.Center = true;

    esp.distance = new_drawing("Text");
    esp.distance.Color = new_color3(1,1,1);
    esp.distance.Size = 14;
    esp.distance.Center = true;

    cache[player] = esp;
end

local function remove_esp(player)
    for _, drawing in next, cache[player] do
        drawing:Remove();
    end

    cache[player] = nil;
end

local function update_esp()
    for player, esp in next, cache do
        local character = player and player.Character;
        if character and player.Team ~= localplayer.Team then
            local cframe = get_pivot(character);
            local position, visible = wtvp(camera, cframe.Position);

            esp.box.Visible = visible;
            esp.tracer.Visible = visible;
            esp.name.Visible = visible;
            esp.distance.Visible = visible;

            if visible then
                local scale_factor = 1 / (position.Z * tan(rad(camera.FieldOfView * 0.5)) * 2) * 100;
                local width, height = floor(30 * scale_factor), floor(50 * scale_factor);
                local x, y = floor(position.X), floor(position.Y);

                esp.box.Size = new_vector2(width, height);
                esp.box.Position = new_vector2(floor(x - width * 0.5), floor(y - height * 0.5));

                esp.tracer.From = new_vector2(floor(viewport_size.X * 0.5), floor(viewport_size.Y));
                esp.tracer.To = new_vector2(x, floor(y + height * 0.5));

                esp.name.Text = player.Name;
                esp.name.Position = new_vector2(x, floor(y - height * 0.5 - esp.name.TextBounds.Y));

                esp.distance.Text = floor(position.Z) .. " studs";
                esp.distance.Position = new_vector2(x, floor(y + height * 0.5));
            end
        else
            esp.box.Visible = false;
            esp.tracer.Visible = false;
            esp.name.Visible = false;
            esp.distance.Visible = false;
        end
    end
end

-- connections
players.PlayerAdded:Connect(create_esp);
players.PlayerRemoving:Connect(remove_esp);
run_service.RenderStepped:Connect(update_esp);

for _, player in next, players:GetPlayers() do
    if player ~= localplayer then
        create_esp(player);
    end
end
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
