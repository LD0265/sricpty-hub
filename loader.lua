local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

local notif = Notification.new("success", "Success", "Executing Script")
    wait(1)
    notif:delete()
else
    local notif = Notification.new("info", "Executor Detected", "Syanpse Only")
end
print(game.PlaceId)

local chosenGame = ({
    [9660733037] = "peter.lua",
    [9203864304] = "floppa.lua"
})[game.PlaceId]

if chosenGame then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LD0265/sricpty-hub/main/" .. chosenGame))()
end
