## Creating the UI
```lua
local SykosUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/UI-Librarys/main/Sykos"))()
local SykosGUI = SykosUI:CreateGui("A Gui.")
```
## Adding credit to the UI
```lua
SykosGUI:AddCredit("Custom Credits")
```
## Creating a tab
```lua
local SykosTab = SykosGUI:CreateTab("A tab.")
```
## Creating a header
```lua
SykosTab:Header("A header.")
```
## Creating a button
```lua
SykosTab:Button("A button.", function()
    print("Button pressed.")
end)
```
## Creating a toggle
```lua
SykosTab:Toggle("A toggle.", function(value)
    print(value)
end)
```
## Setting a toggle to a value
```lua
local ToggleToBeSet = SykosTab:Toggle("A toggle.", function(value)
    print(value)
end)
ToggleToBeSet:Set(true) -- put true or false here
```
## Creating a textbox
```lua
SykosTab:Box("A textbox.", false, function(text) -- Change false to true if you want it to only accept numbers.
  print(text)
end)
```
## Setting a textbox's value
```lua
local BoxTest = SykosTab:Box("A textbox.", false, function(text)
  print(text)
end)
BoxTest:Set("Bruh") -- only accepts strings, input a string here
```
## Creating a slider
```lua
SykosTab:Slider("A slider", 1, 120, function(value)
  game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
```
## Setting a slider's value
```lua
local SliderTest = SykosTab:Slider("A slider with a pre-set value.", 1, 120, function(value)
  game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
SliderTest:Set(60)
```