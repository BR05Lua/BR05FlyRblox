--[[
	BR05 Smooth Superman Flight Menu (85-degree tilt, BR05-style UI)
	- PC:
		* Menu toggle key (default H) + also mobile X button
		* Fly toggle key (default F) + also mobile Fly button
	- Flight:
		* Smooth 3D movement relative to camera
		* Faces forward even when only going up/down (Q/E)
		* Tilts 85 degrees when moving, small tilt when idle
		* Mutes walk/run/footstep sounds while flying
	- Animations (R15 only):
		* FLOAT plays when idle
		* FLY plays when moving
		* Animation IDs must be EMOTE animation assets from the Marketplace
		* Animations survive reset (tracks reloaded on respawn)
]]

--------------------------------------------------------------------
-- CONFIG (CHANGE THESE)
--------------------------------------------------------------------
local DEBUG = false

-- Animation IDs (R15 only) - MUST be EMOTE animations from the Marketplace
local FLOAT_ID = "rbxassetid://88138077358201"
local FLY_ID   = "rbxassetid://131217573719045"

--------------------------------------------------------------------
-- SERVICES
--------------------------------------------------------------------
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer

--------------------------------------------------------------------
-- DEBUG
--------------------------------------------------------------------
local function dprint(...)
	if DEBUG then
		print("[BR05]", ...)
	end
end

local function dwarn(...)
	if DEBUG then
		warn("[BR05 WARN]", ...)
	end
end

--------------------------------------------------------------------
-- STATE
--------------------------------------------------------------------
local character
local humanoid
local rootPart
local camera = workspace.CurrentCamera

local flying = false

local flySpeed = 480
local maxFlySpeed = 1000
local minFlySpeed = 1

local menuToggleKey = Enum.KeyCode.H
local flightToggleKey = Enum.KeyCode.F

local moveInput = Vector3.new(0, 0, 0)
local verticalInput = 0

local gui
local mainFrame
local hintLabel
local controlLabel

local mobileFlyButton
local mobileMenuButton

local dragging = false
local dragOffset = Vector2.new(0, 0)
local dragTarget = nil
local dragStartFramePos = nil
local dragStartInputPos = nil

local originalRunSoundStates = {}

local bodyGyro
local bodyVel

local currentVelocity = Vector3.new(0, 0, 0)
local currentGyroCFrame

local rightShoulder
local defaultShoulderC0

-- Animations (R15 only)
local animator = nil
local floatTrack = nil
local flyTrack = nil

--------------------------------------------------------------------
-- TWEAKS (SMOOTHNESS)
--------------------------------------------------------------------
local V_LERP = 5.2
local R_LERP = 5.2

--------------------------------------------------------------------
-- UTIL
--------------------------------------------------------------------
local function tween(object, info, props)
	local t = TweenService:Create(object, info, props)
	t:Play()
	return t
end

local function isR15()
	return humanoid and humanoid.RigType == Enum.HumanoidRigType.R15
end

local function cleanAssetId(text)
	if not text then return nil end
	text = tostring(text):gsub("%s+", "")
	if text == "" then return nil end
	local digits = text:match("(%d+)")
	if not digits then return nil end
	return "rbxassetid://" .. digits
end

local function findRightShoulder(char)
	for _, part in ipairs(char:GetDescendants()) do
		if part:IsA("Motor6D") and part.Name == "Right Shoulder" then
			return part
		end
	end
	return nil
end

--------------------------------------------------------------------
-- FOOTSTEP SOUND CONTROL
--------------------------------------------------------------------
local function cacheAndMuteRunSounds()
	if not character then return end
	for _, desc in ipairs(character:GetDescendants()) do
		if desc:IsA("Sound") then
			local nameLower = string.lower(desc.Name)
			if nameLower:find("run") or nameLower:find("walk") or nameLower:find("footstep") then
				if not originalRunSoundStates[desc] then
					originalRunSoundStates[desc] = {
						Volume = desc.Volume,
						Playing = desc.Playing,
					}
				end
				desc.Volume = 0
				desc.Playing = false
			end
		end
	end
end

local function restoreRunSounds()
	for sound, data in pairs(originalRunSoundStates) do
		if sound and sound.Parent then
			sound.Volume = data.Volume or 0.5
			if data.Playing then
				sound.Playing = true
			end
		end
	end
	originalRunSoundStates = {}
end

--------------------------------------------------------------------
-- ANIM LOADING (R15 ONLY) - RESPAWN SAFE
--------------------------------------------------------------------
local function stopAnimTracks()
	pcall(function()
		if floatTrack and floatTrack.IsPlaying then floatTrack:Stop(0.1) end
	end)
	pcall(function()
		if flyTrack and flyTrack.IsPlaying then flyTrack:Stop(0.1) end
	end)
end

local function loadAnimTracks()
	if not isR15() then
		animator = nil
		floatTrack = nil
		flyTrack = nil
		return
	end

	animator = humanoid:FindFirstChildOfClass("Animator")
	if not animator then
		animator = Instance.new("Animator")
		animator.Parent = humanoid
	end

	floatTrack = nil
	flyTrack = nil

	local floatAnim = Instance.new("Animation")
	floatAnim.AnimationId = FLOAT_ID
	local ok1, t1 = pcall(function()
		return animator:LoadAnimation(floatAnim)
	end)
	if ok1 and t1 then
		floatTrack = t1
		floatTrack.Priority = Enum.AnimationPriority.Action
		floatTrack.Looped = true
	else
		dwarn("Failed to load FLOAT animation (make sure it's an EMOTE animation).")
	end

	local flyAnim = Instance.new("Animation")
	flyAnim.AnimationId = FLY_ID
	local ok2, t2 = pcall(function()
		return animator:LoadAnimation(flyAnim)
	end)
	if ok2 and t2 then
		flyTrack = t2
		flyTrack.Priority = Enum.AnimationPriority.Action
		flyTrack.Looped = true
	else
		dwarn("Failed to load FLY animation (make sure it's an EMOTE animation).")
	end
end

local function applyAnimationIds(newFloatId, newFlyId)
	local f = cleanAssetId(newFloatId)
	local a = cleanAssetId(newFlyId)

	if f then FLOAT_ID = f end
	if a then FLY_ID = a end

	if isR15() then
		stopAnimTracks()
		loadAnimTracks()
		if flying and floatTrack then
			floatTrack:Play(0.12)
		end
	end
end

--------------------------------------------------------------------
-- CHARACTER SETUP
--------------------------------------------------------------------
local function getCharacter()
	character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	humanoid = character:WaitForChild("Humanoid")
	rootPart = character:WaitForChild("HumanoidRootPart")
	camera = workspace.CurrentCamera

	rightShoulder = findRightShoulder(character)
	defaultShoulderC0 = rightShoulder and rightShoulder.C0 or nil

	loadAnimTracks()
end

--------------------------------------------------------------------
-- UI HELPERS
--------------------------------------------------------------------
local function makeTextLabel(parent, text, size, bold)
	local lbl = Instance.new("TextLabel")
	lbl.BackgroundTransparency = 1
	lbl.Text = text
	lbl.Font = Enum.Font.Gotham
	lbl.TextSize = size or 16
	lbl.TextColor3 = Color3.fromRGB(235, 235, 235)
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	lbl.TextYAlignment = Enum.TextYAlignment.Center
	lbl.Parent = parent

	if bold then
		pcall(function()
			lbl.FontFace.Weight = Enum.FontWeight.Bold
		end)
	end

	return lbl
end

local function makeTextButton(parent, text)
	local btn = Instance.new("TextButton")
	btn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	btn.BackgroundTransparency = 0.1
	btn.BorderSizePixel = 0
	btn.AutoButtonColor = true
	btn.Text = text
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 16
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)

	local stroke = Instance.new("UIStroke")
	stroke.Color = Color3.fromRGB(180, 30, 30)
	stroke.Thickness = 1
	stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	stroke.Parent = btn

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 6)
	corner.Parent = btn

	btn.Parent = parent
	return btn
end

local function makeTextBox(parent, placeholder, defaultText)
	local box = Instance.new("TextBox")
	box.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	box.BackgroundTransparency = 0.1
	box.BorderSizePixel = 0
	box.ClearTextOnFocus = false
	box.PlaceholderText = placeholder
	box.Text = defaultText or ""
	box.Font = Enum.Font.Gotham
	box.TextSize = 15
	box.TextColor3 = Color3.fromRGB(255, 255, 255)

	local stroke = Instance.new("UIStroke")
	stroke.Color = Color3.fromRGB(180, 30, 30)
	stroke.Thickness = 1
	stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	stroke.Parent = box

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 6)
	corner.Parent = box

	box.Parent = parent
	return box
end

local function updateControlsText()
	if controlLabel then
		controlLabel.Text = string.format("%s or Mobile = Fly   •   %s or X = Menu", flightToggleKey.Name, menuToggleKey.Name)
	end
end

--------------------------------------------------------------------
-- UI CREATION (TOP BAR DRAGGABLE ONLY + FIXED DRAG FLICK)
--------------------------------------------------------------------
local function createUI()
	local pg = LocalPlayer:WaitForChild("PlayerGui")

	if pg:FindFirstChild("BR05_FlightUI") then
		pg.BR05_FlightUI:Destroy()
	end

	gui = Instance.new("ScreenGui")
	gui.Name = "BR05_FlightUI"
	gui.ResetOnSpawn = false
	gui.IgnoreGuiInset = true
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	gui.Parent = pg

	-- top controls label (black, smaller, right at top)
	controlLabel = Instance.new("TextLabel")
	controlLabel.BackgroundTransparency = 1
	controlLabel.AnchorPoint = Vector2.new(0.5, 0)
	controlLabel.Position = UDim2.new(0.5, 0, 0, 2)
	controlLabel.Size = UDim2.new(0, 650, 0, 20)
	controlLabel.Font = Enum.Font.GothamBold
	controlLabel.TextSize = 16
	controlLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	controlLabel.TextStrokeTransparency = 1
	controlLabel.Parent = gui
	updateControlsText()

	-- hint (red) fades out
	hintLabel = Instance.new("TextLabel")
	hintLabel.BackgroundTransparency = 1
	hintLabel.Text = "H = Flight Menu • F = Fly"
	hintLabel.Font = Enum.Font.GothamBlack
	hintLabel.TextSize = 26
	hintLabel.TextColor3 = Color3.fromRGB(255, 70, 70)
	hintLabel.TextStrokeTransparency = 0.4
	hintLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	hintLabel.AnchorPoint = Vector2.new(0.5, 1)
	hintLabel.Position = UDim2.new(0.6, 0, 0.35, -6)
	hintLabel.Parent = gui

	local hintStroke = Instance.new("UIStroke")
	hintStroke.Color = Color3.fromRGB(255, 255, 255)
	hintStroke.Thickness = 1
	hintStroke.Parent = hintLabel

	-- Main frame
	mainFrame = Instance.new("Frame")
	mainFrame.Name = "FlightMenu"
	mainFrame.Size = UDim2.new(0, 360, 0, 360)
	mainFrame.Position = UDim2.new(0.55, 0, 0.35, 0)
	mainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	mainFrame.BorderSizePixel = 0
	mainFrame.Active = true
	mainFrame.Parent = gui

	local frameCorner = Instance.new("UICorner")
	frameCorner.CornerRadius = UDim.new(0, 12)
	frameCorner.Parent = mainFrame

	local frameStroke = Instance.new("UIStroke")
	frameStroke.Color = Color3.fromRGB(180, 30, 30)
	frameStroke.Thickness = 2
	frameStroke.Transparency = 0.2
	frameStroke.Parent = mainFrame

	local frameShadow = Instance.new("ImageLabel")
	frameShadow.Name = "Shadow"
	frameShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	frameShadow.Position = UDim2.new(0.5, 0, 0.5, 4)
	frameShadow.Size = UDim2.new(1, 26, 1, 26)
	frameShadow.BackgroundTransparency = 1
	frameShadow.Image = "rbxassetid://5028857084"
	frameShadow.ImageTransparency = 0.4
	frameShadow.ScaleType = Enum.ScaleType.Slice
	frameShadow.SliceCenter = Rect.new(24, 24, 276, 276)
	frameShadow.ZIndex = 0
	frameShadow.Parent = mainFrame

	-- title bar (ONLY THIS DRAGS)
	local titleBar = Instance.new("Frame")
	titleBar.Name = "TitleBar"
	titleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	titleBar.BackgroundTransparency = 0.05
	titleBar.BorderSizePixel = 0
	titleBar.Size = UDim2.new(1, 0, 0, 30)
	titleBar.Parent = mainFrame
	titleBar.ZIndex = 2

	local titleBarCorner = Instance.new("UICorner")
	titleBarCorner.CornerRadius = UDim.new(0, 12)
	titleBarCorner.Parent = titleBar

	local titleLabel = makeTextLabel(titleBar, "BR05 Flight Control", 18, true)
	titleLabel.Size = UDim2.new(1, -20, 1, 0)
	titleLabel.Position = UDim2.new(0, 10, 0, 0)
	titleLabel.ZIndex = 3

	local titleUnderline = Instance.new("Frame")
	titleUnderline.BackgroundColor3 = Color3.fromRGB(180, 30, 30)
	titleUnderline.BorderSizePixel = 0
	titleUnderline.Size = UDim2.new(1, -20, 0, 1)
	titleUnderline.Position = UDim2.new(0, 10, 1, -1)
	titleUnderline.Parent = mainFrame
	titleUnderline.ZIndex = 2

	-- content
	local contentFrame = Instance.new("Frame")
	contentFrame.Name = "Content"
	contentFrame.BackgroundTransparency = 1
	contentFrame.Size = UDim2.new(1, -24, 1, -50)
	contentFrame.Position = UDim2.new(0, 12, 0, 38)
	contentFrame.Parent = mainFrame

	local padding = Instance.new("UIPadding")
	padding.PaddingTop = UDim.new(0, 8)
	padding.PaddingBottom = UDim.new(0, 8)
	padding.Parent = contentFrame

	local listLayout = Instance.new("UIListLayout")
	listLayout.FillDirection = Enum.FillDirection.Vertical
	listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	listLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	listLayout.SortOrder = Enum.SortOrder.LayoutOrder
	listLayout.Padding = UDim.new(0, 10)
	listLayout.Parent = contentFrame

	-- key row helper
	local function makeKeyRow(order, leftText, initialKeyName)
		local row = Instance.new("Frame")
		row.BackgroundTransparency = 1
		row.Size = UDim2.new(1, 0, 0, 28)
		row.LayoutOrder = order
		row.Parent = contentFrame

		local rowLayout = Instance.new("UIListLayout")
		rowLayout.FillDirection = Enum.FillDirection.Horizontal
		rowLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
		rowLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		rowLayout.Padding = UDim.new(0, 10)
		rowLayout.Parent = row

		local lbl = makeTextLabel(row, leftText, 16, false)
		lbl.Size = UDim2.new(0, 170, 1, 0)

		local btn = makeTextButton(row, initialKeyName)
		btn.Size = UDim2.new(0, 90, 1, 0)

		return btn
	end

	local flightKeyButton = makeKeyRow(1, "Fly Toggle Key:", flightToggleKey.Name)
	local menuKeyButton = makeKeyRow(2, "Menu Toggle Key:", menuToggleKey.Name)

	-- speed row
	local speedRow = Instance.new("Frame")
	speedRow.BackgroundTransparency = 1
	speedRow.Size = UDim2.new(1, 0, 0, 46)
	speedRow.LayoutOrder = 3
	speedRow.Parent = contentFrame

	local speedLayout = Instance.new("UIListLayout")
	speedLayout.FillDirection = Enum.FillDirection.Vertical
	speedLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	speedLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	speedLayout.Padding = UDim.new(0, 6)
	speedLayout.Parent = speedRow

	local speedLabel = makeTextLabel(speedRow, "Fly Speed: " .. tostring(flySpeed), 16, false)
	speedLabel.Size = UDim2.new(1, 0, 0, 18)

	local sliderFrame = Instance.new("Frame")
	sliderFrame.BackgroundTransparency = 1
	sliderFrame.Size = UDim2.new(1, 0, 0, 18)
	sliderFrame.Parent = speedRow

	local sliderBg = Instance.new("Frame")
	sliderBg.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	sliderBg.BorderSizePixel = 0
	sliderBg.Size = UDim2.new(1, 0, 0, 8)
	sliderBg.Position = UDim2.new(0, 0, 0.5, -4)
	sliderBg.Parent = sliderFrame

	local sliderBgCorner = Instance.new("UICorner")
	sliderBgCorner.CornerRadius = UDim.new(1, 0)
	sliderBgCorner.Parent = sliderBg

	local sliderFill = Instance.new("Frame")
	sliderFill.BackgroundColor3 = Color3.fromRGB(180, 30, 30)
	sliderFill.BorderSizePixel = 0
	sliderFill.Size = UDim2.new(0, 0, 1, 0)
	sliderFill.Parent = sliderBg

	local sliderFillCorner = Instance.new("UICorner")
	sliderFillCorner.CornerRadius = UDim.new(1, 0)
	sliderFillCorner.Parent = sliderFill

	local sliderKnob = Instance.new("Frame")
	sliderKnob.Size = UDim2.new(0, 14, 0, 14)
	sliderKnob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sliderKnob.BorderSizePixel = 0
	sliderKnob.Parent = sliderBg

	local sliderKnobCorner = Instance.new("UICorner")
	sliderKnobCorner.CornerRadius = UDim.new(1, 0)
	sliderKnobCorner.Parent = sliderKnob

	local function updateSliderVisualFromSpeed(speedValue)
		local alpha = (speedValue - minFlySpeed) / (maxFlySpeed - minFlySpeed)
		alpha = math.clamp(alpha, 0, 1)
		sliderFill.Size = UDim2.new(alpha, 0, 1, 0)
		sliderKnob.Position = UDim2.new(alpha, -7, 0.5, -7)
		speedLabel.Text = "Fly Speed: " .. math.floor(speedValue)
	end

	updateSliderVisualFromSpeed(flySpeed)

	local sliderDragging = false
	local previewSpeed = flySpeed

	local function updatePreviewFromX(x)
		if not sliderBg or not sliderBg.Parent then return end
		local alpha = math.clamp((x - sliderBg.AbsolutePosition.X) / sliderBg.AbsoluteSize.X, 0, 1)
		previewSpeed = minFlySpeed + (maxFlySpeed - minFlySpeed) * alpha
		updateSliderVisualFromSpeed(previewSpeed)
	end

	sliderBg.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			sliderDragging = true
			updatePreviewFromX(input.Position.X)

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					sliderDragging = false
					flySpeed = math.floor(previewSpeed)
					updateSliderVisualFromSpeed(flySpeed)
				end
			end)
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if sliderDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			updatePreviewFromX(input.Position.X)
		end
	end)

	-- Animation ID section
	local animHeader = makeTextLabel(contentFrame, "Animations (R15) - EMOTES ONLY", 15, true)
	animHeader.LayoutOrder = 4

	local function makeIdRow(order, labelText, defaultDigits)
		local row = Instance.new("Frame")
		row.BackgroundTransparency = 1
		row.Size = UDim2.new(1, 0, 0, 28)
		row.LayoutOrder = order
		row.Parent = contentFrame

		local rowLayout = Instance.new("UIListLayout")
		rowLayout.FillDirection = Enum.FillDirection.Horizontal
		rowLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		rowLayout.Padding = UDim.new(0, 10)
		rowLayout.Parent = row

		local lbl = makeTextLabel(row, labelText, 14, false)
		lbl.Size = UDim2.new(0, 90, 1, 0)

		local box = makeTextBox(row, "EMOTE asset ID digits only", defaultDigits)
		box.Size = UDim2.new(0, 200, 1, 0)

		return box
	end

	local floatBox = makeIdRow(5, "Float ID:", FLOAT_ID:gsub("rbxassetid://", ""))
	local flyBox = makeIdRow(6, "Fly ID:", FLY_ID:gsub("rbxassetid://", ""))

	local applyRow = Instance.new("Frame")
	applyRow.BackgroundTransparency = 1
	applyRow.Size = UDim2.new(1, 0, 0, 30)
	applyRow.LayoutOrder = 7
	applyRow.Parent = contentFrame

	local applyBtn = makeTextButton(applyRow, "Apply IDs")
	applyBtn.Size = UDim2.new(0, 140, 1, 0)

	applyBtn.MouseButton1Click:Connect(function()
		applyAnimationIds(floatBox.Text, flyBox.Text)
		floatBox.Text = FLOAT_ID:gsub("rbxassetid://", "")
		flyBox.Text = FLY_ID:gsub("rbxassetid://", "")
	end)

	local infoLabel = makeTextLabel(
		contentFrame,
		"WASD + Q/E move in 3D.\nTilt 85 when moving. R15 = emote animations. R6 = smooth fly only.",
		13,
		false
	)
	infoLabel.LayoutOrder = 8
	infoLabel.TextWrapped = true

	----------------------------------------------------------------
	-- DRAGGING (TITLE BAR ONLY) - FIX FLICK BY USING START POS
	----------------------------------------------------------------
	local function beginDrag(input)
		dragging = true
		dragTarget = mainFrame
		dragStartFramePos = mainFrame.Position
		dragStartInputPos = Vector2.new(input.Position.X, input.Position.Y)
	end

	local function endDrag()
		dragging = false
		dragTarget = nil
		dragStartFramePos = nil
		dragStartInputPos = nil
	end

	titleBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			beginDrag(input)
		end
	end)

	titleBar.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			endDrag()
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if dragging and dragTarget and dragStartFramePos and dragStartInputPos then
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				local now = Vector2.new(input.Position.X, input.Position.Y)
				local delta = now - dragStartInputPos
				mainFrame.Position = UDim2.new(
					dragStartFramePos.X.Scale, dragStartFramePos.X.Offset + delta.X,
					dragStartFramePos.Y.Scale, dragStartFramePos.Y.Offset + delta.Y
				)
			end
		end
	end)

	----------------------------------------------------------------
	-- KEYBIND CHANGING
	----------------------------------------------------------------
	local waitingForFlightKey = false
	local waitingForMenuKey = false

	flightKeyButton.MouseButton1Click:Connect(function()
		waitingForFlightKey = true
		waitingForMenuKey = false
		flightKeyButton.Text = "..."
	end)

	menuKeyButton.MouseButton1Click:Connect(function()
		waitingForMenuKey = true
		waitingForFlightKey = false
		menuKeyButton.Text = "..."
	end)

	UserInputService.InputBegan:Connect(function(input, gp)
		if gp then return end
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if waitingForFlightKey then
				flightToggleKey = input.KeyCode
				flightKeyButton.Text = flightToggleKey.Name
				waitingForFlightKey = false
				updateControlsText()
			elseif waitingForMenuKey then
				menuToggleKey = input.KeyCode
				menuKeyButton.Text = menuToggleKey.Name
				waitingForMenuKey = false
				updateControlsText()
			end
		end
	end)

	-- Hint fade out
	task.delay(5, function()
		if hintLabel then
			local info = TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			tween(hintLabel, info, { TextTransparency = 1, TextStrokeTransparency = 1 })
			task.wait(1.3)
			if hintLabel then
				hintLabel:Destroy()
				hintLabel = nil
			end
		end
	end)

	-- Mobile buttons (bottom right above jump)
	mobileFlyButton = Instance.new("TextButton")
	mobileFlyButton.Name = "MobileFly"
	mobileFlyButton.Size = UDim2.new(0, 92, 0, 38)
	mobileFlyButton.Position = UDim2.new(1, -110, 1, -170)
	mobileFlyButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	mobileFlyButton.BackgroundTransparency = 0.1
	mobileFlyButton.BorderSizePixel = 0
	mobileFlyButton.Text = "Fly"
	mobileFlyButton.Font = Enum.Font.GothamBold
	mobileFlyButton.TextSize = 16
	mobileFlyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	mobileFlyButton.Parent = gui

	local mFlyStroke = Instance.new("UIStroke")
	mFlyStroke.Color = Color3.fromRGB(180, 30, 30)
	mFlyStroke.Thickness = 2
	mFlyStroke.Parent = mobileFlyButton

	local mFlyCorner = Instance.new("UICorner")
	mFlyCorner.CornerRadius = UDim.new(0, 10)
	mFlyCorner.Parent = mobileFlyButton

	mobileMenuButton = Instance.new("TextButton")
	mobileMenuButton.Name = "MobileMenu"
	mobileMenuButton.Size = UDim2.new(0, 44, 0, 38)
	mobileMenuButton.Position = UDim2.new(1, -162, 1, -170)
	mobileMenuButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	mobileMenuButton.BackgroundTransparency = 0.1
	mobileMenuButton.BorderSizePixel = 0
	mobileMenuButton.Text = "X"
	mobileMenuButton.Font = Enum.Font.GothamBold
	mobileMenuButton.TextSize = 16
	mobileMenuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	mobileMenuButton.Parent = gui

	local mMenuStroke = Instance.new("UIStroke")
	mMenuStroke.Color = Color3.fromRGB(180, 30, 30)
	mMenuStroke.Thickness = 2
	mMenuStroke.Parent = mobileMenuButton

	local mMenuCorner = Instance.new("UICorner")
	mMenuCorner.CornerRadius = UDim.new(0, 10)
	mMenuCorner.Parent = mobileMenuButton
end

--------------------------------------------------------------------
-- FLIGHT
--------------------------------------------------------------------
local function startFlying()
	if flying or not humanoid or not rootPart then return end
	flying = true

	humanoid.PlatformStand = true
	cacheAndMuteRunSounds()

	bodyGyro = Instance.new("BodyGyro")
	bodyGyro.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
	bodyGyro.P = 1e5
	bodyGyro.D = 1500
	bodyGyro.CFrame = rootPart.CFrame
	bodyGyro.Parent = rootPart

	bodyVel = Instance.new("BodyVelocity")
	bodyVel.MaxForce = Vector3.new(1e5, 1e5, 1e5)
	bodyVel.Velocity = Vector3.new()
	bodyVel.Parent = rootPart

	currentVelocity = Vector3.new(0, 0, 0)
	currentGyroCFrame = rootPart.CFrame

	loadAnimTracks()

	if isR15() and floatTrack then
		floatTrack:Play(0.12)
	end
end

local function stopFlying()
	if not flying then return end
	flying = false

	if isR15() then
		stopAnimTracks()
	end

	if bodyGyro then bodyGyro:Destroy() bodyGyro = nil end
	if bodyVel then bodyVel:Destroy() bodyVel = nil end

	if humanoid then
		humanoid.PlatformStand = false
	end

	if rightShoulder and defaultShoulderC0 then
		rightShoulder.C0 = defaultShoulderC0
	end

	restoreRunSounds()
end

local function updateMovementInput()
	local dir = Vector3.new(0, 0, 0)
	if UserInputService:IsKeyDown(Enum.KeyCode.W) then dir = dir + Vector3.new(0, 0, -1) end
	if UserInputService:IsKeyDown(Enum.KeyCode.S) then dir = dir + Vector3.new(0, 0, 1) end
	if UserInputService:IsKeyDown(Enum.KeyCode.A) then dir = dir + Vector3.new(-1, 0, 0) end
	if UserInputService:IsKeyDown(Enum.KeyCode.D) then dir = dir + Vector3.new(1, 0, 0) end
	moveInput = dir

	local vert = 0
	if UserInputService:IsKeyDown(Enum.KeyCode.E) then vert = vert + 1 end
	if UserInputService:IsKeyDown(Enum.KeyCode.Q) then vert = vert - 1 end
	verticalInput = vert
end

RunService.RenderStepped:Connect(function(dt)
	if not flying or not rootPart or not camera or not bodyGyro or not bodyVel then return end

	updateMovementInput()

	local camCF = camera.CFrame
	local camLook = camCF.LookVector
	local camRight = camCF.RightVector

	local moveDir = Vector3.new(0, 0, 0)
	moveDir = moveDir + camLook * (-moveInput.Z)
	moveDir = moveDir + camRight * (moveInput.X)
	moveDir = moveDir + Vector3.new(0, verticalInput, 0)

	local moveMag = moveDir.Magnitude
	if moveMag > 0 then
		moveDir = moveDir.Unit
	end

	local targetVel
	if moveMag > 0 then
		targetVel = moveDir * flySpeed
	else
		targetVel = camLook * 0.01
	end

	currentVelocity = currentVelocity:Lerp(targetVel, math.clamp(dt * V_LERP, 0, 1))
	bodyVel.Velocity = currentVelocity

	local lookDir
	if moveMag > 0.12 then
		local horiz = Vector3.new(moveDir.X, 0, moveDir.Z)
		if horiz.Magnitude < 0.05 then
			local flat = Vector3.new(camLook.X, 0, camLook.Z)
			lookDir = (flat.Magnitude > 0.001) and flat.Unit or Vector3.new(0, 0, -1)
		else
			lookDir = moveDir
		end
	else
		local flat = Vector3.new(camLook.X, 0, camLook.Z)
		lookDir = (flat.Magnitude > 0.001) and flat.Unit or Vector3.new(0, 0, -1)
	end

	local baseCF = CFrame.lookAt(rootPart.Position, rootPart.Position + lookDir)

	local tiltAngle = (moveMag > 0.12) and -math.rad(85) or -math.rad(10)
	local targetCF = baseCF * CFrame.Angles(tiltAngle, 0, 0)

	if not currentGyroCFrame then
		currentGyroCFrame = targetCF
	end

	currentGyroCFrame = currentGyroCFrame:Lerp(targetCF, math.clamp(dt * R_LERP, 0, 1))
	bodyGyro.CFrame = currentGyroCFrame

	if isR15() and floatTrack and flyTrack then
		if moveMag > 0.12 then
			if not flyTrack.IsPlaying then
				floatTrack:Stop(0.12)
				flyTrack:Play(0.15)
			end
		else
			if not floatTrack.IsPlaying then
				flyTrack:Stop(0.12)
				floatTrack:Play(0.15)
			end
		end
	end
end)

--------------------------------------------------------------------
-- INPUT HANDLING
--------------------------------------------------------------------
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end

	if input.KeyCode == flightToggleKey then
		if flying then stopFlying() else startFlying() end
	elseif input.KeyCode == menuToggleKey then
		if mainFrame then
			mainFrame.Visible = not mainFrame.Visible
		end
	end
end)

--------------------------------------------------------------------
-- MAIN
--------------------------------------------------------------------
getCharacter()
LocalPlayer.CharacterAdded:Connect(function()
	task.wait(0.45)
	getCharacter()
	if flying then
		stopFlying()
	end
end)

createUI()

task.defer(function()
	if mobileFlyButton then
		mobileFlyButton.MouseButton1Click:Connect(function()
			if flying then stopFlying() else startFlying() end
		end)
	end
	if mobileMenuButton then
		mobileMenuButton.MouseButton1Click:Connect(function()
			if mainFrame then
				mainFrame.Visible = not mainFrame.Visible
			end
		end)
	end
end)

print("BR05 Flight Menu loaded for:", LocalPlayer.Name)
