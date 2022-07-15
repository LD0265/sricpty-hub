local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

if game:GetService("Players").LocalPlayer.DisplayName == 'Hyptonic' then
    game.Players.LocalPlayer:Kick('Error Executing Script - DM ElEmDee for help')
end

local chosenGame = ({
    [9660733037] = "peter.lua",
    [9312552871] = "floppa.lua",
    [9498006165] = "tappingsim.lua",
    [1215581239] = "doomspire.lua",
    [9921522947] = "floppa2.lua"
})[game.PlaceId]

if game.Players.LocalPlayer.DisplayName == 'elem_dee' then
    local chosenGameop = ({
        [9660733037] = "peter.lua",
        [9312552871] = "floppa.lua",
        [9498006165] = "tappingsimop.lua",
        [1215581239] = "doomspireop.lua",
        [9921522947] = "floppa2op.lua"
    })[game.PlaceId]
    
    local notif = Notification.new("success", "Welcome ElEmDee", "Executing Owner Script")
        wait(2)
    notif:delete()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LD0265/sricpty-hub/main/" .. chosenGameop))()
    else
        local notif = Notification.new("success", "Success", "Executing Script")
            wait(2)
        notif:delete()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LD0265/sricpty-hub/main/" .. chosenGame))()
end
