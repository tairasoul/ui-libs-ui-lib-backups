local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

function OrionNotif(title, content, image, duration)
  OrionLib:MakeNotification({
	Name = title or "This is a standard title.",
	Content = content or "This is a standard content line.",
	Image = image or nil,
	Time = duration or 5
})
end
