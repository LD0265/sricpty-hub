local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

local notif = Notification.new("error", "Error", "Script Whitelist Required")
notif:deleteTimeout(3)
