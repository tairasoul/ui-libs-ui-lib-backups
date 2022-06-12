## Creating the UI
```lua
local Abstract = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/UI-Librarys/main/Abstract%20UI%20Lib"))()
local AbstractCreate = Abstract:Create("Abstract")
```
## Creating a divider
```lua
AbstractCreate:Divider("divider")
```
## Creating a button
```lua
AbstractCreate:Button("button", "funni", function()
    print("boi")
end)
-- arg 1 is the name, arg 2 is description.
```
## Creating a toggle
```lua
AbstractCreate:Toggle("toggle", "funny toggle", false, function(value)
    print(value)
end)
-- arg 1 is name, arg 2 is description, arg 3 is default state
```
## Creating a dropdown
```lua
AbstractCreate:Dropdown("dropdown", "funny dropdown", {"bruh1", "bruh2", "bruh3"}, function(chosen)
    print(chosen)
end)
-- arg 1 is name, arg 2 is description, arg 3 is options
```
## Creating a slider
```lua
AbstractCreate:Slider("slider", "funny slider", 1, 500, 16, function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
-- arg 1 is name, arg 2 is description, arg 3 is min, arg 4 is max, arg 5 is default
```
## Creating a hide keybind
```lua
local ToggleAbstract = game:GetService("CoreGui"):FindFirstChild("UILIB", true).Parent
game:GetService("UserInputService").InputBegan:connect(function(inputobject)
    if inputobject.UserInputType == Enum.UserInputType.Keyboard then
        if inputobject.KeyCode == Enum.KeyCode.RightShift then -- Replace Enum.KeyCode.RightShift with any keycode from https://developer.roblox.com/en-us/api-reference/enum/KeyCode
            ToggleAbstract.Enabled = not ToggleAbstract.Enabled
        end
    end
end)
```
