## Setting up a Theme Table
```lua
local Theme = {
		PageBackground = Color3.fromRGB(32, 34, 37),
		PageOutterBackground = Color3.fromRGB(54, 57, 63),
		ButtonBackground = Color3.fromRGB(52, 52, 52),
		HeaderButtons = Color3.fromRGB(255,255,255),
		TabBackground = Color3.fromRGB(47, 49, 54),
		TabColor = Color3.fromRGB(54, 57, 63),
		TabSelectedBackground = Color3.fromRGB(37, 39, 43),
		LabelColor = Color3.fromRGB(20, 20, 20),
		ButtonBoxColor = Color3.fromRGB(35, 35, 35),
		TextColor = Color3.fromRGB(255, 255, 255),
		PushedIconColor = Color3.fromRGB(60,60,60),
		SelectedIconColor = Color3.fromRGB(0,255,0),
		IconColor = Color3.fromRGB(255, 255, 255),
		ButtonBoxTextColor = Color3.fromRGB(255,255,255),
		TitleTextColor = Color3.fromRGB(114, 118, 125),
		TitleBackground = Color3.fromRGB(32, 34, 37)
} -- an example taken from the actual source
```
## Creating the Window
```lua
local Athenic = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/athenic_gui_library.lua"))()
local Window = Athenic:CreateWindow("Name", Theme) -- Theme is a table
```
## Creating a Tab
```lua
local Tab = Window:CreateTab("TabName") -- Second arg is an image asset.
```
## Adding a button
```lua
Tab:Button("This is a button.", function()
  print("Button pressed.")
end) -- you can customize the button's icon, just add a third arg after end
```
## Adding a toggle
```lua
Tab:Toggle("This is a toggle.", function(value)
  print(value)
end) -- you can customize the toggle's icon, just add a third arg after end
```
## Setting a toggle's value
```lua
local gamertoggle = Tab:Toggle("gamer toggle", function(value)
    print(value)
end) -- you can customize the toggle's icon, just add a third arg after end
gamertoggle:SetToggle(true)
```
## Adding a textbox
```lua
Tab:TextBox("This is a textbox.", function(value)
  print(value)
end) -- you can customize the textbox's icon, just add a third arg after end
```
## Adding a label
```lua
Tab:Label("Description Text") -- you can parse a table into this to setup settings or you can just put nil, as before you can add a third arg to customize it.
```
## Setting a label's text
```lua
local Label = Tab:Label("bruh")
wait(1) -- wait is not necessary, just here for the example
Label:ChangeText("no more bruh")
```
## Making a slider
```lua
Tab:Slider("Walkspeed", 120, function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
```
## Adding a dropdown
```lua
-- a table is required, so let's make one
local dropdowntable = {
    [1] = "bruh",
    [2] = "no bruh"
}
Tab:Dropdown("This is a dropdown.", dropdowntable, function(selected)
    print(selected)
end,    false) -- our 4th argument here is whether or not we see an option called None, you can add a 5th arg to customize the icon as mentioned before
```
## Setting up a keybind
```lua
Tab:Keybind("Hide Keybind", Enum.KeyCode.RightShift, function() -- if you need the keycodes they're here https://developer.roblox.com/en-us/api-reference/enum/KeyCode
  game:GetService("CoreGui").UILibrary.Enabled = not game:GetService("CoreGui").UILibrary.Enabled
end) -- as with the others, you can add a 4th arg to customize icon
```
## Setting up a Color Wheel
```lua
Tab:ColorWheel("This is a color wheel.", function(value) 
    print(value)
end)
```
