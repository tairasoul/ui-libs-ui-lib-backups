local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

function OrionNotif(title, content, image, duration)
  OrionLib:MakeNotification({
	Name = ""..title,
	Content = ""..content,
	Image = image,
	Time = duration
})
end
