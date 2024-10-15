-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Start = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local X = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.363268614, 0, 0.199004978, 0)
Frame.Size = UDim2.new(0, 184, 0, 252)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 184, 0, 27)

UICorner.Parent = Frame

Start.Name = "Start"
Start.Parent = Frame
Start.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
Start.BorderColor3 = Color3.fromRGB(0, 0, 0)
Start.BorderSizePixel = 0
Start.Position = UDim2.new(0.070652172, 0, 0.821428597, 0)
Start.Size = UDim2.new(0, 158, 0, 35)
Start.Font = Enum.Font.SourceSans
Start.Text = "Start"
Start.TextColor3 = Color3.fromRGB(0, 0, 0)
Start.TextSize = 14.000

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0326086953, 0, 0.138888896, 0)
ScrollingFrame.Size = UDim2.new(0, 171, 0, 163)

X.Name = "X"
X.Parent = Frame
X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
X.BackgroundTransparency = 1.000
X.BorderColor3 = Color3.fromRGB(0, 0, 0)
X.BorderSizePixel = 0
X.Position = UDim2.new(0.804347813, 0, 0, 0)
X.Size = UDim2.new(0, 36, 0, 27)
X.Font = Enum.Font.SourceSans
X.Text = "X"
X.TextColor3 = Color3.fromRGB(0, 0, 0)
X.TextSize = 31.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 141, 0, 27)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Contos Community Script"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

-- Scripts:

local function QBMY_fake_script() -- Frame.UIDragger 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local frame = script.Parent
	local dragging = false
	local dragInput, mousePos, framePos
	
	local function update(input)
	    local delta = input.Position - mousePos
	    frame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
	end
	
	frame.InputBegan:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseButton1 then
	        dragging = true
	        mousePos = input.Position
	        framePos = frame.Position
	
	        input.Changed:Connect(function()
	            if input.UserInputState == Enum.UserInputState.End then
	                dragging = false
	            end
	        end)
	    end
	end)
	
	frame.InputChanged:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseMovement then
	        dragInput = input
	    end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
	    if dragging and input == dragInput then
	        update(input)
	    end
	end)
	
	
end
coroutine.wrap(QBMY_fake_script)()
