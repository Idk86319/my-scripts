local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local firstPress = true
local currentPart = nil
local R15_PART_NAMES = {
	"Head",
	"UpperTorso",
	"LowerTorso",
	"LeftUpperArm",
	"LeftLowerArm",
	"LeftHand",
	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftFoot",
	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot",
}

if testraknet then
  getgenv().testraknet = false
  raknet.startphysics()
  print('Restarted Physics Sender')
  return
end

getgenv().testraknet = true

local newtimestamp = raknet.timestamp() + 2000 -- skip timestamp by adding time (bigger number = longer desync)

raknet.stopphysics()
raknet.sendphysics({
  {
    Part = player.Character.PrimaryPart,
    Attributes = {
        ReplicationPV = {
            Position = player.Character.HumanoidRootPart.CFrame
        }
    }
  }
}, newtimestamp)


local function spawnPart()
	local character = player.Character
	if not character then
		return
	end

	local model = Instance.new("Model")
	model.Name = "SpawnedPart"

	local bodyPartsAdded = 0

	for _, partName in ipairs(R15_PART_NAMES) do
		local originalPart = character:FindFirstChild(partName)

		if originalPart and originalPart:IsA("BasePart") then
			local clone
            
            if partName == "Head" then
            	clone = Instance.new("Part")
            	clone.Name = "Head"
            
            	
            	clone.Size = originalPart.Size
            	clone.CFrame = originalPart.CFrame 
            
            	
            	clone.Shape = Enum.PartType.Cylinder
            
            	
            	clone.CFrame *= CFrame.Angles(0, 0, math.rad(90))
            else
            	clone = originalPart:Clone()
            	clone.CFrame = originalPart.CFrame 
            end

			
			for _, child in ipairs(clone:GetChildren()) do
				if child:IsA("JointInstance")
					or child:IsA("WeldConstraint")
					or child:IsA("NoCollisionConstraint") then
					child:Destroy()
				elseif child:IsA("Decal")
					or child:IsA("Texture") then
					-- Removes face decal and other textures
					child:Destroy()
				end
			end

            clone.Anchored = true
            clone.CanCollide = false
            clone.CanTouch = false
            clone.CanQuery = false
            clone.Massless = true
            clone.CastShadow = false

			
            clone.Material = Enum.Material.Neon
            clone.Color = Color3.fromRGB(0, 255, 255)
            
            
            for _, child in ipairs(clone:GetChildren()) do
            	if child:IsA("Decal") or child:IsA("Texture") then
            		child:Destroy()
            	end
            end
            
            
            if clone.Name == "Head" then
            	for _, child in ipairs(clone:GetChildren()) do
            		if child:IsA("SurfaceAppearance") then
            			child:Destroy()
            		end
            	end
            end

			clone.Parent = model
			bodyPartsAdded += 1
		end
	end

	if bodyPartsAdded == 0 then
		model:Destroy()
		return
	end

	model.Parent = workspace
	currentPart = model
end

local function togglePart()
	if currentPart and currentPart.Parent then
		currentPart:Destroy()
		currentPart = nil
	else
		spawnPart()
	end
end

-- The key bind is b if you want to change it
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then
        return
    end

    if input.KeyCode == Enum.KeyCode.B then
        -- Toggle raknet physics sender
        if firstPress then
            raknet.stopphysics()
        else
            raknet.startphysics()
        end
        firstPress = not firstPress

        
        togglePart()
    end
end)
