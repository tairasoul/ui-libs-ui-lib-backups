local AkaliNotif = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/batusz/uilibrarys/main/AkaliNotifLib"))();
local Notify = AkaliNotif.Notify;
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local CTLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/ui-libs-ui-lib-backups/main/function%20things/notif%20lib%20backups/CTNotif.lua"))()
local RDLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Rain-Design/Public/main/NotifHolder.lua"))()
local notifier = {}

function notifier:Init()
  local NotifLib = {}
  function NotifLib:Akali(titlestring, infostring, timetowait)
      Notify({
      Description = infostring;
      Title = titlestring;
      Duration = timetowait;
      });
  end
  function NotifLib:Orion(title, content, image, duration)
  if typeof(image) == "number" then 
    duration = image 
    image = nil 
  end
  OrionLib:MakeNotification({
    Name = title or "This is a standard title.",
    Content = content or "This is a standard content line.",
    Image = image or "rbxassetid://4483345998",
    Time = duration or 5
  })
  end
  function NotifLib:CTNotif(title, content, duration, image)
     CTLib:Notif(title, content, duration, image)
  end
  function NotifLib:RainNotif(text, time, sp, cornerprop)
      RDLib:Notify(text, time, sp, cornerprop)
  end
  return NotifLib
end
return notifier
