## Creating a new VerifyX window
```lua
local verifyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/UI-Librarys/main/VerifyX%20UI%20Lib"))()
local verifywindow = verifyx.new("Loading...", 0.1) -- arg 1 is the status, arg 2 is percent
```
## Updating status and percent
```lua
verifywindow:Update("loading (nah jk)", 0.2) -- updates status and percent
```
## Completing the verification thing
```lua
verifywindow:Complete()
```
