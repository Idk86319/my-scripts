-- Gui to Lua
-- Version: 3.2

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ToggleButton = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")

-- Services
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Toggle Button
ToggleButton.Parent = ScreenGui
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.BorderColor3 = Color3.fromRGB(68, 0, 255)
ToggleButton.BorderSizePixel = 2
ToggleButton.Position = UDim2.new(0.5, -50, 0, 20)
ToggleButton.Size = UDim2.new(0, 100, 0, 35)
ToggleButton.Font = Enum.Font.DenkOne
ToggleButton.Text = "Open"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 18
ToggleButton.Visible = true

-- Main Frame
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(1, 0, 2)
Frame.BorderColor3 = Color3.fromRGB(68, 0, 255)
Frame.BorderSizePixel = 2
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 0, 0, 0)
Frame.Visible = false

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(68, 0, 255)
TextButton.Position = UDim2.new(0.0802120194, 0, 0.244293272, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.DenkOne
TextButton.Text = "XVC Hub"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 20.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Visible = false

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(68, 0, 255)
TextButton_2.Position = UDim2.new(0.0802120194, 0, 0.4796049, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.DenkOne
TextButton_2.Text = "Universal Esp"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 20.000
TextButton_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Visible = false

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderColor3 = Color3.fromRGB(68, 0, 255)
TextButton_3.Position = UDim2.new(0.0802121088, 0, 0.707704067, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 50)
TextButton_3.Font = Enum.Font.DenkOne
TextButton_3.Text = "Infinite Yield"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextSize = 20.000
TextButton_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.Visible = false

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(68, 0, 255)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.329802573, 0, 0.0114864381, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.DenkOne
TextLabel.Text = "What script?"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 41.000
TextLabel.Visible = false

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.438101083, 0, 0.158686996, 0)
TextLabel_2.Size = UDim2.new(0, 73, 0, 18)
TextLabel_2.Font = Enum.Font.DenkOne
TextLabel_2.Text = "universal"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
TextLabel_2.Visible = false

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderColor3 = Color3.fromRGB(68, 0, 255)
TextButton_4.Position = UDim2.new(0.559820175, 0, 0.243749306, 0)
TextButton_4.Size = UDim2.new(0, 200, 0, 50)
TextButton_4.Font = Enum.Font.DenkOne
TextButton_4.Text = "Ghost hub(has a key)"
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextSize = 20.000
TextButton_4.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.Visible = false

TextButton_5.Parent = Frame
TextButton_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderColor3 = Color3.fromRGB(68, 0, 255)
TextButton_5.Position = UDim2.new(0.559820235, 0, 0.477487594, 0)
TextButton_5.Size = UDim2.new(0, 200, 0, 50)
TextButton_5.Font = Enum.Font.DenkOne
TextButton_5.Text = "SCRIPTHUBV3"
TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.TextSize = 20.000
TextButton_5.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.Visible = false

TextButton_6.Parent = Frame
TextButton_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderColor3 = Color3.fromRGB(68, 0, 255)
TextButton_6.Position = UDim2.new(0.559820235, 0, 0.705336571, 0)
TextButton_6.Size = UDim2.new(0, 200, 0, 50)
TextButton_6.Font = Enum.Font.DenkOne
TextButton_6.Text = "Orca hub"
TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.TextSize = 20.000
TextButton_6.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.Visible = false

-- Notification on load
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Universal Script";
	Text = "Script loaded successfully!";
	Duration = 5;
})

-- Scripts:

-- Toggle button: drag + open/close combined
local function ToggleButton_fake_script()
	local script = Instance.new('LocalScript', ToggleButton)
	local btn = script.Parent
	local dragging = false
	local dragStart = nil
	local startPos = nil
	local wasDragged = false
	local isOpen = false

	btn.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			wasDragged = false
			dragStart = input.Position
			startPos = btn.Position
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - dragStart
			if math.abs(delta.X) > 5 or math.abs(delta.Y) > 5 then
				wasDragged = true
			end
			btn.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y
			)
		end
	end)

	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)

	btn.MouseButton1Click:Connect(function()
		if wasDragged then return end

		if not isOpen then
			-- Open the GUI
			isOpen = true
			btn.Text = "Close"
			Frame.Visible = true
			Frame.Size = UDim2.new(0, 0, 0, 0)
			Frame.BackgroundTransparency = 1

			local openTween = TweenService:Create(Frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = UDim2.new(0, 531, 0, 344),
				BackgroundTransparency = 0.1
			})
			openTween:Play()

			-- Show children only after frame has fully opened
			openTween.Completed:Connect(function()
				for _, child in ipairs(Frame:GetChildren()) do
					if child:IsA("GuiObject") then
						child.Visible = true
					end
				end
			end)
		else
			-- Close the GUI
			isOpen = false
			btn.Text = "Open"

			for _, child in ipairs(Frame:GetChildren()) do
				if child:IsA("GuiObject") then
					child.Visible = false
				end
			end

			local closeTween = TweenService:Create(Frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 0, 0, 0)
			})
			closeTween:Play()
			closeTween.Completed:Connect(function()
				Frame.Visible = false
			end)
		end
	end)
end
coroutine.wrap(ToggleButton_fake_script)()

-- Frame drag script
local function WZORSG_fake_script()
	local script = Instance.new('LocalScript', Frame)
	local frame = script.Parent
	local dragging = false
	local dragStart = nil
	local startPos = nil

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - dragStart
			frame.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y
			)
		end
	end)

	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)
end
coroutine.wrap(WZORSG_fake_script)()

local function RAYN_fake_script()
	local script = Instance.new('LocalScript', TextButton)
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://rayfield.xvchubontop.workers.dev/"))()
	end)
end
coroutine.wrap(RAYN_fake_script)()

local function GYCOZM_fake_script()
	local script = Instance.new('LocalScript', TextButton_2)
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/leanandhigh/Lean.high/refs/heads/main/Lean.lua"))()
	end)
end
coroutine.wrap(GYCOZM_fake_script)()

local function OIKGS_fake_script()
	local script = Instance.new('LocalScript', TextButton_3)
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end)
end
coroutine.wrap(OIKGS_fake_script)()

local function KMTIBND_fake_script()
	local script = Instance.new('LocalScript', TextButton_4)
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://pastefy.app/h9sod1M8/raw"))()
	end)
end
coroutine.wrap(KMTIBND_fake_script)()

local function PQZIPAV_fake_script()
	local script = Instance.new('LocalScript', TextButton_5)
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/scripthubekitten/SCRIPTHUBV3/main/SCRIPTHUBV3", true))()
	end)
end
coroutine.wrap(PQZIPAV_fake_script)()

local function ZOHY_fake_script()
	local script = Instance.new('LocalScript', TextButton_6)
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/richie0866/orca/master/public/snapshot.lua"))()
	end)
end
coroutine.wrap(ZOHY_fake_script)()
