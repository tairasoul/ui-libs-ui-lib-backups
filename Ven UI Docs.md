## Creating the window
```lua
local VenUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/ui-libs-ui-lib-backups/main/Ven%20UI%20Backup"))()
local VenWindow = VenUI:Window("VenUI Test")
```

## Creating a tab
```lua
local VenTab1 = VenWindow:Tab("VenTab Test")
```

## Creating a button
```lua
VenTab1:Button("VenButton", function()
    print("button pressed")
end)
-- // name, callback
```

## Creating a toggle
```lua
VenTab1:Toggle("VenToggle", function(state)
    print(state)
end)
-- // name, callback
```

## Creating a slider
```lua
VenTab1:Slider("VenSlider", 16, 2500, 16, function(ws)
    game:GetService'Player'.LocalPlayer.Character.Humanoid.WalkSpeed = ws
end)
-- // name, min, max, default, callback
```

## Creating a dropdown

```lua
VenTab1:Dropdown("VenDropdown", {"ventest", "hello", "bruh"}, function(chosen)
    print(chosen)
end)
-- // name, list, callback
```

## Creating a textbox
```lua
VenTab1:Textbox("VenTextbox", false, function(typed)
    print(tostring(typed))
end)
-- // name, refresh textbox (remove text after pressing enter), callback
```

## Creating a hide keybind
```lua
game:GetService("UserInputService").InputBegan:connect(function(inputobject)
      if inputobject.KeyCode == Enum.KeyCode.RightShift then -- Get enum codes here: https://developer.roblox.com/en-us/api-reference/enum/KeyCode
          if game:GetService("CoreGui").VenLib then -- Not the best method but it works well.
              game:GetService("CoreGui").VenLib.Enabled = not game:GetService("CoreGui").VenLib.Enabled
          end
      end
end)
```
