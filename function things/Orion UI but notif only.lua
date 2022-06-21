local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

function OrionNotif(title, content, image, duration)
if typeof(image) == "number" then image = duration end
OrionLib:MakeNotification({
	Name = tostring(title) or "This is a standard title.",
	Content = tostring(content) or "This is a standard content line.",
	Image = image or "rbxassetid://4483345998",
	Time = duration or 5
})
end
