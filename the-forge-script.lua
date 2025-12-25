-- ===== PLACE CHECK =====
local allowedPlaces = {
    [129009554587176] = true,
    [76558904092080] = true
}

if not allowedPlaces[game.PlaceId] then
    warn("Script not allowed in this place:", game.PlaceId)
    return
end
-- =====THE SCRIPT=========
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(1, 0, 2)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.397058815, 0, 0.329234987, 0)
Frame.Size = UDim2.new(0, 233, 0, 250)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(68, 0, 255)
TextButton.Position = UDim2.new(0.0719999969, 0, 0.254000008, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.DenkOne
TextButton.Text = "Pepehook(no key)"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 20.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(68, 0, 255)
TextButton_2.Position = UDim2.new(0.0719999969, 0, 0.497000009, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.DenkOne
TextButton_2.Text = "Lazy Hub(no key)"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 20.000
TextButton_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderColor3 = Color3.fromRGB(68, 0, 255)
TextButton_3.Position = UDim2.new(0.0719999969, 0, 0.734000027, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 50)
TextButton_3.Font = Enum.Font.DenkOne
TextButton_3.Text = "Zenith Hub(has key)"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextSize = 20.000
TextButton_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(68, 0, 255)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0719999969, 0, 0.0280000009, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.DenkOne
TextLabel.Text = "What script?"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 41.000

-- Scripts:

local function CFJCL_fake_script() -- TextButton.Script
	local script = Instance.new('Script', TextButton)

	local button = script.Parent

	button.MouseButton1Click:Connect(function()
		getgenv().request = http_request
        http.request = http_request

        repeat wait() until game:IsLoaded()

        local name, version = identifyexecutor()
        print("Executor: " .. name .. " Version: " .. tostring(version))

        local supportedExecutors = {
            ["Wave"] = true,
            ["Zenith"] = true,
            ["Volcano"] = true,
            ["Hydrogen"] = true,
            ["Macsploit"] = true,
            ["Potassium"] = true,
            ["Volt"] = true,
            ["ChocoSploit"] = true,
            ["Bunni"] = true,
            ["Delta"] = true,
            ["Velocity"] = true,
        }

        if supportedExecutors[name] then
            print("✓ Supported Executor detected!")
        else
            warn("⚠ This executor (" .. tostring(name) .. ") should be working, but if you experience issues, please contact support for help.")
        end

        local PlaceIds = {
            [17625359962] = "https://api.luarmor.net/files/v3/loaders/4cc022ded41f6816ba0f7fb8c6dda44f.lua",
            [76558904092080] = "https://api.luarmor.net/files/v3/loaders/34c43d39431b1d16b9934f1122fd6f02.lua",
            [129009554587176] = "https://api.luarmor.net/files/v3/loaders/34c43d39431b1d16b9934f1122fd6f02.lua",
            [121864768012064] = "https://api.luarmor.net/files/v3/loaders/b65dd9431e917a54cc84ed933242a95c.lua",
        }

        local currentPlaceId = game.PlaceId
        if not game:IsLoaded() then
            print("Awaiting Game Load...")
            game.Loaded:Wait()
            print("Game Loaded! Initiating...")
        end

        if PlaceIds[currentPlaceId] then
            print("Loading script for PlaceID: " .. currentPlaceId)

            local success, result = pcall(function()
                loadstring(game:HttpGet(PlaceIds[currentPlaceId]))()
            end)

            if success then
                print("✓ Script loaded successfully!")
            else
                warn("✗ Error loading script: " .. tostring(result))
            end
        else
            warn("✗ No script found for PlaceID: " .. currentPlaceId)
        end
	end)
end
coroutine.wrap(CFJCL_fake_script)()
local function APQVSFP_fake_script() -- TextButton_2.Script
	local script = Instance.new('Script', TextButton_2)

	local button = script.Parent

	button.MouseButton1Click:Connect(function()
        getgenv().request = http_request
        http.request = http_request

		loadstring(game:HttpGet("https://raw.githubusercontent.com/LioK251/RbScripts/refs/heads/main/lazyuhub_theforge.lua"))()
	end)
end
coroutine.wrap(APQVSFP_fake_script)()
local function FOUINST_fake_script() -- TextButton_3.Script
	local script = Instance.new('Script', TextButton_3)

	local button = script.Parent

	button.MouseButton1Click:Connect(function()
		getgenv().request = http_request
        http.request = http_request

        loadstring(game:HttpGet("https://zenithhub.cloud/panel/script"))()
	end)
end
coroutine.wrap(FOUINST_fake_script)()
local function KWGA_fake_script() -- Frame.DragScript
	local script = Instance.new('LocalScript', Frame)

	local frame = script.Parent
	local UserInputService = game:GetService("UserInputService")
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
			frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)

	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)
end
coroutine.wrap(KWGA_fake_script)()
