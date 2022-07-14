local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

local notif = Notification.new("success", "Success", "Executing Script")
    wait(2)
    notif:delete()

local chosenGame = ({
    [9660733037] = "peter.lua",
    [9312552871] = "floppa.lua",
    [9498006165] = "tappingsim.lua",
    [1215581239] = "doomspire.lua",
    [9921522947] = "floppa2.lua"
})[game.PlaceId]

if game.Players.LocalPlayer.Character == 'LMD2017' then
    local chosenGameop = ({
        [9660733037] = "peter.lua",
        [9312552871] = "floppa.lua",
        [9498006165] = "tappingsim.lua",
        [1215581239] = "doomspireop.lua",
        [9921522947] = "floppa2op.lua"
    })[game.PlaceId]

loadstring(game:HttpGet("https://raw.githubusercontent.com/LD0265/sricpty-hub/main/" .. chosenGameop))()

else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LD0265/sricpty-hub/main/" .. chosenGame))()

end

