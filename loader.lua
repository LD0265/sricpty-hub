local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

local notif = Notification.new("success", "Success", "Executing Script")
    wait(2)
    notif:delete()

local chosenGame = ({
    [9660733037] = "peter.lua",
    [9312552871] = "floppa.lua",
    [9498006165] = "tappingsim.lua",
    [1215581239] = "doomspire.lua"
})[game.PlaceId]

if chosenGame then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LD0265/sricpty-hub/main/" .. chosenGame))()
end
