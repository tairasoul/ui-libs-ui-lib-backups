-- ui made by ashton to learn, not useful as an actual ui lib but it's good for reference if you're trying to make your first ui lib

do
    local gui = game:GetService("CoreGui"):FindFirstChild("Design")
    if gui then
        gui:Destroy()
    end
end
       
local library = {}

-- library:CreateWindow('whywontwork')

function library:CreateWindow(name)
    local Design = Instance.new("ScreenGui")
    local TopMain = Instance.new("Frame")
    local ContainerSample = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local WindowsFrame = Instance.new("Frame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local TopMainTitle = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local UICorner_2 = Instance.new("UICorner")
    local UICorner_4 = Instance.new("UICorner")
    local UICorner_5 = Instance.new("UICorner")
    local CloseButton = Instance.new("TextButton")
    local borderStroke = Instance.new('UIStroke')
    local textStroke = Instance.new('UIStroke')
    local UICorner_6 = Instance.new("UICorner")

    borderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    borderStroke.Color = Color3.fromRGB(255,0,0)
    textStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
    textStroke.Color = Color3.fromRGB(255,0,0)

    Design.Name = "Design"
    Design.Parent = game:GetService("CoreGui")
    Design.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    TopMain.Name = "TopMain"
    TopMain.Parent = Design
    TopMain.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TopMain.Position = UDim2.new(0.316363633, 0, 0.320158094, 0)
    TopMain.Size = UDim2.new(0, 550, 0, 325)

    TopMainTitle.Name = "TopMainTitle"
    TopMainTitle.Parent = TopMain
    TopMainTitle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    TopMainTitle.Size = UDim2.new(0, 550, 0, 20)
    TopMainTitle.Font = Enum.Font.SourceSans
    TopMainTitle.Text = name
    TopMainTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
    TopMainTitle.TextScaled = true
    TopMainTitle.TextSize = 14.000
    TopMainTitle.TextWrapped = true

    ContainerSample.Name = "ContainerSample"
    ContainerSample.Parent = TopMain
    ContainerSample.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ContainerSample.Position = UDim2.new(0.272727281, 0, 0.0646153837, 0)
    ContainerSample.Size = UDim2.new(0, 400, 0, 304)
    
    WindowsFrame.Name = "WindowsFrame"
    WindowsFrame.Parent = TopMain
    WindowsFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    WindowsFrame.Position = UDim2.new(0, 0, 0.0646153912, 0)
    WindowsFrame.Size = UDim2.new(0, 150, 0, 304)

    UIListLayout.Parent = WindowsFrame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    UIListLayout_2.Parent = ContainerSample
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0, 1)

    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = TopMainTitle

    UICorner_2.CornerRadius = UDim.new(0, 9)
    UICorner_2.Parent = WindowsFrame

    UICorner_4.CornerRadius = UDim.new(0, 9)
    UICorner_4.Parent = ContainerSample

    UICorner_5.CornerRadius = UDim.new(0, 9)
    UICorner_5.Parent = TopMain

    CloseButton.Name = "CloseButton"
    CloseButton.Parent = TopMain
    CloseButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    CloseButton.Position = UDim2.new(0.927272737, 0, 0, 0)
    CloseButton.Size = UDim2.new(0, 40, 0, 20)
    CloseButton.Font = Enum.Font.SourceSans
    CloseButton.Text = "X"
    CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    CloseButton.TextScaled = true
    CloseButton.TextSize = 14.000
    CloseButton.TextWrapped = true

    UICorner_6.CornerRadius = UDim.new(0, 9)
    UICorner_6.Parent = CloseButton
    
    borderStroke:Clone().Parent = TopMain
    borderStroke:Clone().Parent = WindowsFrame
    borderStroke:Clone().Parent = ContainerSample
    borderStroke:Clone().Parent = TopMainTitle
    borderStroke:Clone().Parent = CloseButton
    textStroke:Clone().Parent = CloseButton
    textStroke:Clone().Parent = TopMainTitle
    print('window')

    local WindowLibrary = {}
    
    function WindowLibrary:CreatePage(text2)
        local SampleWindowButton = Instance.new("TextButton")

        SampleWindowButton.Name = "SampleWindowButton"
        SampleWindowButton.Parent = WindowsFrame
        SampleWindowButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SampleWindowButton.BackgroundTransparency = 1.000
        SampleWindowButton.Size = UDim2.new(0, 150, 0, 50)
        SampleWindowButton.Font = Enum.Font.SourceSans
        SampleWindowButton.Text = text2
        SampleWindowButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        SampleWindowButton.TextScaled = true
        SampleWindowButton.TextSize = 14.000
        SampleWindowButton.TextWrapped = true
        textStroke:Clone().Parent = SampleWindowButton
        borderStroke:Clone().Parent = SampleWindowButton
        local ButtonLibrary = {}
        function ButtonLibrary:CreateButton(text)
            local OptionSample = Instance.new("Frame")
            local SampleButton = Instance.new("TextButton")
            local SampleLabel = Instance.new("TextLabel")
            local borderStroke = Instance.new('UIStroke')
            local textStroke = Instance.new('UIStroke')
            local UICorner_3 = Instance.new("UICorner")
            local UICorner_7 = Instance.new("UICorner")
    
            OptionSample.Name = "OptionSample"
            OptionSample.Parent = ContainerSample
            OptionSample.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            OptionSample.BackgroundTransparency = 1.000
            OptionSample.Position = UDim2.new(0, 0, -0.00328947371, 0)
            OptionSample.Size = UDim2.new(0, 400, 0, 25)
    
            SampleButton.Name = "SampleButton"
            SampleButton.Parent = OptionSample
            SampleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SampleButton.BackgroundTransparency = 1.000
            SampleButton.Position = UDim2.new(0.9375, 0, 0, 0)
            SampleButton.Size = UDim2.new(0, 25, 0, 25)
            SampleButton.Font = Enum.Font.SourceSans
            SampleButton.Text = ""
            SampleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            SampleButton.TextSize = 14.000
    
            SampleLabel.Name = "SampleLabel"
            SampleLabel.Parent = OptionSample
            SampleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SampleLabel.BackgroundTransparency = 1.000
            SampleLabel.Size = UDim2.new(0, 400, 0, 25)
            SampleLabel.Font = Enum.Font.SourceSans
            SampleLabel.Text = text
            SampleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
            SampleLabel.TextScaled = true
            SampleLabel.TextSize = 14.000
            SampleLabel.TextWrapped = true
    
            borderStroke:Clone().Parent = SampleButton
            borderStroke:Clone().Parent = SampleLabel
            textStroke:Clone().Parent = SampleLabel
            UICorner_3.CornerRadius = UDim.new(0, 9)
            UICorner_3.Parent = SampleButton
            UICorner_7.CornerRadius = UDim.new(0, 9)
            UICorner_7.Parent = SampleLabel
        end
        return ButtonLibrary
    end
    return WindowLibrary
end
return library
