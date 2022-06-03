local AkaliNotif = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/batusz/uilibrarys/main/AkaliNotifLib"))();
local Notify = AkaliNotif.Notify;

function SendAkaliNotification(titlestring, infostring, timetowait)
    Notify({
    Description = ""..infostring;
    Title = ""..titlestring;
    Duration = timetowait;
    });
end
