local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

if game:GetService("Players").LocalPlayer.DisplayName == 'Hyptonic' then
    local notif = Notification.new("success", "Welcome Evyn", "i weight less than u becouse ur fat")
end

getgenv().loaded = true

local chosenGame = ({
    [9660733037] = "peter.lua",
    [9312552871] = "floppa.lua",
    [9498006165] = "tappingsim.lua",
    [1215581239] = "doomspire.lua",
    [9921522947] = "floppa2.lua"
})[game.PlaceId]

if not chosenGame or chosenGameop then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LD0265/sricpty-hub/main/global.lua"))()
            else
    if game.Players.LocalPlayer.DisplayName == 'elem_dee' then
        local chosenGameop = ({
            [9660733037] = "peterop.lua",
            [9312552871] = "floppa.lua",
            [9498006165] = "tappingsimop.lua",
            [1215581239] = "doomspireop.lua",
            [9921522947] = "floppa2op.lua",
            [8750997647] = "tappinglegop.lua"
        })[game.PlaceId]
        
        local notif = Notification.new("success", "Welcome ElEmDee", "Executing Owner Script")
            wait(2)
                  notif:delete()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LD0265/sricpty-hub/main/opscripts/" .. chosenGameop))()
        else
            local notif = Notification.new("success", "Success", "Executing Script")
                wait(2)
                    notif:delete()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LD0265/sricpty-hub/main/scripts/" .. chosenGame))()
    end
end
