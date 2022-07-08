local HttpService = game:GetService'HttpService'
local plr = game:GetService'Players'.LocalPlayer
local plrs = game:GetService'Players'
local UIS = game:GetService('UserInputService')
local RunService = game:GetService('RunService')
local gs = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

do 
    local gui = gs:FindFirstChild("CTNotif")
    if gui then
        gui:Destroy()
    end
end

if getsynasset then
    local old_synapse_asset = getsynasset
    getgenv().getsynasset   = function(path_or_url)
        if path_or_url:find("https://") or path_or_url:find("http://") then
            if not isfolder("synassets") then
                makefolder("synassets")
            end
            local file = string.split(path_or_url, "/")
            local filename = string.split(file[#file], ".")[1]
            if isfile("synassets\\" .. filename .. ".png") then
                return old_synapse_asset("synassets\\" .. filename .. ".png")
            end
            local synapse_request = game:HttpGet(path_or_url)
            local image_base64_encode = syn.crypt.base64.encode(synapse_request)
            writefile("synassets\\" .. filename .. ".png", syn.crypt.base64.decode(image_base64_encode))
            return old_synapse_asset("synassets\\" .. filename .. ".png")
        end
        return old_synapse_asset(path_or_url)
    end
end

local lib = {}

function lib:Notif(Title, Description, Time, Asset)
    Title = Title or "Notification"
    Description = Description or "bruuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuh"
    Time = Time or 5
    if (Asset:find("https://") or Asset:find("http://")) and getsynasset then
        Asset = getsynasset(Asset)
    elseif Asset:find("rbxasset") then
        Asset = Asset
    else
        Asset = "rbxassetid://9818809996"
    end
    local ScreenGui = Instance.new("ScreenGui")
    local Body = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local headertext = Instance.new("TextLabel")
    local header = Instance.new("Frame")
    local ImageLabel = Instance.new("ImageLabel")
    local UICorner_2 = Instance.new("UICorner")
    local UICorner_3 = Instance.new("UICorner")
    local TextLabel = Instance.new("TextLabel")

    ScreenGui.Parent = gs
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Name = "CTNotif"

    Body.Name = "Body"
    Body.Parent = ScreenGui
    Body.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
    Body.BackgroundTransparency = 0.400
    Body.BorderColor3 = Color3.fromRGB(130, 203, 255)
    Body.Position = UDim2.new(0.430021435, 0, 1, 0)
    Body.Size = UDim2.new(0, 268, 0, 124)

    UICorner.Parent = Body

    headertext.Name = "headertext"
    headertext.Parent = Body
    headertext.BackgroundColor3 = Color3.fromRGB(0, 14, 14)
    headertext.BackgroundTransparency = 1.000
    headertext.Position = UDim2.new(0.0895522386, 0, 0, 0)
    headertext.Size = UDim2.new(0, 229, 0, 23)
    headertext.ZIndex = 2
    headertext.Font = Enum.Font.SourceSans
    headertext.Text = Title
    headertext.TextColor3 = Color3.fromRGB(255, 255, 255)
    headertext.TextSize = 16.000
    headertext.TextXAlignment = Enum.TextXAlignment.Left

    header.Name = "header"
    header.Parent = Body
    header.BackgroundColor3 = Color3.fromRGB(0, 14, 14)
    header.Position = UDim2.new(-0.0223880596, 0, 0, 0)
    header.Size = UDim2.new(0, 279, 0, 23)

    ImageLabel.Parent = header
    ImageLabel.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.Size = UDim2.new(0, 23, 0, 23)
    ImageLabel.Image = Asset
    ImageLabel.ScaleType = Enum.ScaleType.Fit

    UICorner_2.Parent = ImageLabel

    UICorner_3.Parent = header

    TextLabel.Parent = Body
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0, 0, 0.185483873, 0)
    TextLabel.Size = UDim2.new(0, 267, 0, 101)
    TextLabel.ZIndex = 2
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = Description
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 22.000
    TextLabel.TextWrapped = true
    
    Body:TweenPosition(UDim2.new(0.43, 0, 0.831971943, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, .4, false)

    coroutine.wrap(function()
		task.wait(Time)
		Body:TweenPosition(UDim2.new(0.430021435, 0, 2, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2.5, false)
		wait(2.7)
		Body:Remove()
	end)()
end

return lib
