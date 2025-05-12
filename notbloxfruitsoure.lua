local NEVERLOSE = loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/NEVERLOSE-UI-Nightly/main/source.lua"))()
NEVERLOSE:Theme("dark")

local Window = NEVERLOSE:AddWindow("BEDOL HUB", "BLADE BALL - MAIN LOADER")
local Notification = NEVERLOSE:Notification()
Notification.MaxNotifications = 6

Notification:Notify("info", "Bedol Hub - Services", "Successfully access to")
Notification:Notify("info", "Bedol Hub - Infos", "Written by Cat Sus &")

local MainTab = Window:AddTab("Main", "earth")
local StatsTab = Window:AddTab("Stats", "list")

-- COMBAT
local Combat = MainTab:AddSection("COMBAT", "left")
Combat:AddToggle("Auto Parry", false, function(v) end)
Combat:AddToggle("Auto Raging Deflection & Rapture", false, function(v) end)
Combat:AddToggle("View Part", false, function(v) end)

-- RAGE
local Rage = MainTab:AddSection("RAGE", "left")
Rage:AddToggle("Enrage Parry", false, function(v) end)
Rage:AddToggle("Anti - AFK", false, function(v) end)

-- EARLY ACCESS
local Early = MainTab:AddSection("EARLY ACCESS", "left")
Early:AddLabel("Early Access Feature is coming soon")
Early:AddLabel("Check out our Discord to get new info!")
Early:AddToggle("Anti Infinity [Force Field]", false, function(v) end)

-- FUNNY
local Funny = MainTab:AddSection("FUNNY", "left")
Funny:AddSlider("Speed Spin", 0, 100, 10, function(v) end)
Funny:AddToggle("Spin", false, function(v) end)

-- ANTI
local Anti = MainTab:AddSection("ANTI", "left")
Anti:AddToggle("Anti Pull [Force Field]", false, function(v) end)
Anti:AddToggle("Anti Swap [Force Field]", false, function(v) end)

-- AUTOMATIC
local Auto = MainTab:AddSection("AUTOMATIC", "left")
Auto:AddToggle("AI Automatic Play", false, function(v) end)
Auto:AddToggle("Show Path", false, function(v) end)

-- ESP
local ESP = MainTab:AddSection("ESP", "left")
ESP:AddToggle("ESP Player", false, function(v) end)
ESP:AddToggle("ESP Ball", false, function(v) end)
ESP:AddToggle("ESP Target", false, function(v) end)

-- CODE
local Code = MainTab:AddSection("CODE", "left")
Code:AddButton("Redeem All Codes", function() end)

-- MANUAL
local Manual = MainTab:AddSection("MANUAL", "left")
Manual:AddLabel("Credit To: GrinGo Dev, Opila Chick")

local alreadyOpened = false
Manual:AddButton("Manual Auto Click", function()
if alreadyOpened then return end
alreadyOpened = true

local UserInputService = game:GetService("UserInputService")  
local gui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))  
gui.Name = "ManualAutoClickToggle"  
gui.ResetOnSpawn = false  

local MainFrame = Instance.new("Frame", gui)  
MainFrame.Size = UDim2.new(0, 140, 0, 55)  
MainFrame.Position = UDim2.new(0.5, -70, 0.5, -27)  
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)  
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  
MainFrame.BorderSizePixel = 0  
MainFrame.Active = true  

local ShadowFrame = Instance.new("Frame", gui)  
ShadowFrame.Size = UDim2.new(0, 130, 0, 45)  
ShadowFrame.Position = UDim2.new(0.5, -62, 0.5, -15)  
ShadowFrame.AnchorPoint = Vector2.new(0.5, 0.5)  
ShadowFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
ShadowFrame.BorderSizePixel = 0  
ShadowFrame.ZIndex = 1  

local ToggleButton = Instance.new("TextButton", ShadowFrame)  
ToggleButton.Size = UDim2.new(1, 0, 1, 0)  
ToggleButton.Position = UDim2.new(0, 0, 0, 0)  
ToggleButton.BackgroundTransparency = 1  
ToggleButton.Text = "false"  
ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)  
ToggleButton.TextSize = 20  
ToggleButton.Font = Enum.Font.GothamBold  
ToggleButton.ZIndex = 2  

local isOn = false  
ToggleButton.MouseButton1Click:Connect(function()  
    isOn = not isOn  
    ToggleButton.Text = isOn and "true" or "false"  
end)  

local dragging = false  
local dragStart, startPos  

local function StartDrag(input)  
    dragging = true  
    dragStart = input.Position  
    startPos = MainFrame.Position  
end  

local function EndDrag()  
    dragging = false  
end  

local function MoveFrame(input)  
    if dragging then  
        local delta = input.Position - dragStart  
        local newPos = UDim2.new(  
            startPos.X.Scale, startPos.X.Offset + delta.X,  
            startPos.Y.Scale, startPos.Y.Offset + delta.Y  
        )  
        MainFrame.Position = newPos  
        ShadowFrame.Position = UDim2.new(0.5, newPos.X.Offset + 8, 0.5, newPos.Y.Offset + 12)  
    end  
end  

MainFrame.InputBegan:Connect(function(input)  
    if input.UserInputType == Enum.UserInputType.Touch then StartDrag(input) end  
end)  

MainFrame.InputEnded:Connect(function(input)  
    if input.UserInputType == Enum.UserInputType.Touch then EndDrag() end  
end)  

UserInputService.TouchMoved:Connect(function(input) MoveFrame(input) end)

end)

-- CHAT
local Chat = MainTab:AddSection("CHAT", "left")
Chat:AddToggle("Kill Says", false, function(v) end)
Chat:AddToggle("Auto GG", false, function(v) end)

-- OTHERS
local Others = MainTab:AddSection("OTHERS", "right")
Others:AddToggle("Fast Mode", false, function(v) end)
Others:AddSlider("Time of Day", 0, 24, 12, function(v) end)
Others:AddToggle("Change Time", false, function(v) end)

-- TROLLS
local Trolls = MainTab:AddSection("TROLLS", "right")
Trolls:AddToggle("Noclip", false, function(v) end)
Trolls:AddToggle("Follow Ball", false, function(v) end)
Trolls:AddSlider("Follow Speed", 0, 100, 10, function(v) end)
Trolls:AddToggle("Freeze Ball", false, function(v) end)

