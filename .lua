--[[
	SOS HUD
	Single LocalScript
	Put this LocalScript in StarterPlayerScripts so it auto loads every time you join

	This build:
	- SOS marker is ¬ (only this means SOS)
	- AK marker is ؍؍؍ or ؍ (AK is independent and does NOT make someone an SOS user)
	- KSK marker is ,,κžκåçţíѷåţíѷåţȇđ,, (independent)
	- Tags are independent but still share the same chat listener system
	- Separate BillboardGui per tag type:
		1) SOS role tag (Owner, Sin, Tester, SOS User) only appears if they used SOS marker (¬), except Owners always show
		2) AK tag is a small circle with "AK"
		3) KSK tag is a small circle with "KSK"
	- Clicking tags:
		- Normal click teleports you behind them by 5 studs
		- Hold LeftCtrl then click shows a small stats popup for that player
	- All tag text is centered
	- Tags are about 30 percent smaller
	- Owner tag is glitchy neon yellow text with dark black glass background

	(No remote events added by this script beyond Roblox default chat systems)
]]

--------------------------------------------------------------------
-- SERVICES
--------------------------------------------------------------------
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local GuiService = game:GetService("GuiService")
local StarterGui = game:GetService("StarterGui")
local Lighting = game:GetService("Lighting")
local Debris = game:GetService("Debris")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TextChatService = game:FindService("TextChatService")

local LocalPlayer = Players.LocalPlayer
local camera = workspace.CurrentCamera

--------------------------------------------------------------------
-- CONFIG
--------------------------------------------------------------------
local DEBUG = false
local function dprint(...)
	if DEBUG then
		print("[SOS HUD]", ...)
	end
end

local DEFAULT_FLOAT_ID = "rbxassetid://88138077358201"
local DEFAULT_FLY_ID   = "rbxassetid://131217573719045"

local FLOAT_ID = DEFAULT_FLOAT_ID
local FLY_ID   = DEFAULT_FLY_ID

local menuToggleKey = Enum.KeyCode.H
local flightToggleKey = Enum.KeyCode.F

local flySpeed = 200
local maxFlySpeed = 1000
local minFlySpeed = 1

local velocityLerpRate = 7.0
local rotationLerpRate = 7.0
local idleSlowdownRate = 2.6

local MOVING_TILT_DEG = 85
local IDLE_TILT_DEG = 10

local MOBILE_FLY_POS = UDim2.new(1, -170, 1, -190)
local MOBILE_FLY_SIZE = UDim2.new(0, 140, 0, 60)

local MICUP_PLACE_IDS = {
	["6884319169"] = true,
	["15546218972"] = true,
}

local DISCORD_LINK = "https://discord.gg/cacg7kvX"

-- Sounds
local INTRO_SOUND_ID = "rbxassetid://1843492223"
local BUTTON_CLICK_SOUND_ID = "rbxassetid://111174530730534"
local BUTTON_CLICK_VOLUME = 0.6

-- Camera defaults
local DEFAULT_FOV = nil
local DEFAULT_CAM_MIN_ZOOM = nil
local DEFAULT_CAM_MAX_ZOOM = nil

-- Infinite zoom
local INFINITE_ZOOM = 1e9

-- Saved settings key
local SETTINGS_FILE_PREFIX = "SOS_HUD_Settings_"
local SETTINGS_ATTR_NAME = "SOS_HUD_SETTINGS_JSON"

--------------------------------------------------------------------
-- STATE
--------------------------------------------------------------------
local character
local humanoid
local rootPart

local flying = false
local bodyGyro
local bodyVel

local currentVelocity = Vector3.new(0, 0, 0)
local currentGyroCFrame

local moveInput = Vector3.new(0, 0, 0)
local verticalInput = 0

local rightShoulder
local defaultShoulderC0

local originalRunSoundStates = {}

local animator
local floatTrack
local flyTrack

local animMode = "Float"
local lastAnimSwitch = 0
local ANIM_SWITCH_COOLDOWN = 0.25
local ANIM_TO_FLY_THRESHOLD = 0.22
local ANIM_TO_FLOAT_THRESHOLD = 0.12

local stateOverrides = {
	Idle = nil,
	Walk = nil,
	Run = nil,
	Jump = nil,
	Climb = nil,
	Fall = nil,
	Swim = nil,
}
local lastChosenState = "Idle"
local lastChosenCategory = "Custom"

-- Player speed
local DEFAULT_WALKSPEED = nil
local playerSpeed = nil

-- Camera settings
-- Keep CameraSubject = Humanoid always to preserve Shift Lock
local camAttachMode = "Humanoid"
local camOffset = Vector3.new(0, 0, 0)
local camFov = nil
local camMaxZoom = INFINITE_ZOOM

-- UI State
local gui

local menuFrame
local menuHandle
local arrowButton
local tabsBar
local pagesHolder

local mobileFlyButton

local fpsLabel
local fpsAcc = 0
local fpsFrames = 0
local fpsValue = 60
local rainbowHue = 0

-- Menu tween safety
local menuOpen = false
local menuTween = nil

-- Button sound system
local clickSoundTemplate = nil
local buttonSoundAttached = setmetatable({}, { __mode = "k" })

-- Save debounce
local pendingSave = true

--------------------------------------------------------------------
-- HELPERS
--------------------------------------------------------------------
local function notify(title, text, dur)
	pcall(function()
		StarterGui:SetCore("SendNotification", {
			Title = title or "SOS HUD",
			Text = text or "",
			Duration = dur or 3
		})
	end)
end

local function clamp01(x)
	if x < 0 then return 0 end
	if x > 1 then return 1 end
	return x
end

local function tween(obj, info, props)
	local t = TweenService:Create(obj, info, props)
	t:Play()
	return t
end

local function safeDestroy(inst)
	if inst and inst.Parent then
		inst:Destroy()
	end
end

local function toAssetIdString(anyValue)
	local s = tostring(anyValue or "")
	s = s:gsub("%s+", "")
	if s == "" then return nil end
	if s:find("^rbxassetid://") then
		return s
	end
	if s:match("^%d+$") then
		return "rbxassetid://" .. s
	end
	if s:find("^http") and s:lower():find("roblox.com") and s:lower():find("id=") then
		local id = s:match("id=(%d+)")
		if id then return "rbxassetid://" .. id end
	end
	return nil
end

local function findRightShoulderMotor(char)
	for _, part in ipairs(char:GetDescendants()) do
		if part:IsA("Motor6D") and part.Name == "Right Shoulder" then
			return part
		end
	end
	return nil
end

local function stopAllPlayingTracks(hum)
	for _, tr in ipairs(hum:GetPlayingAnimationTracks()) do
		pcall(function()
			tr:Stop(0)
		end)
	end
end

--------------------------------------------------------------------
-- SAVE / LOAD (per UserId)
--------------------------------------------------------------------
local function canFileIO()
	return (typeof(readfile) == "function") and (typeof(writefile) == "function") and (typeof(isfile) == "function")
end

local function getSettingsFileName()
	return SETTINGS_FILE_PREFIX .. tostring(LocalPlayer.UserId) .. ".json"
end

local function encodeSettings(tbl)
	local ok, res = pcall(function()
		return HttpService:JSONEncode(tbl)
	end)
	if ok then return res end
	return nil
end

local function decodeSettings(str)
	local ok, res = pcall(function()
		return HttpService:JSONDecode(str)
	end)
	if ok and typeof(res) == "table" then
		return res
	end
	return nil
end

local function buildSettingsTable()
	return {
		Version = 2,
		UserId = LocalPlayer.UserId,

		FLOAT_ID = FLOAT_ID,
		FLY_ID = FLY_ID,
		FlySpeed = flySpeed,

		PlayerSpeed = playerSpeed,

		CamSubjectMode = camAttachMode,
		CamOffset = { camOffset.X, camOffset.Y, camOffset.Z },
		CamFov = camFov,
		CamMaxZoom = camMaxZoom,

		AnimOverrides = stateOverrides,
		LastAnimState = lastChosenState,
		LastAnimCategory = lastChosenCategory,

		Lighting = _G.__SOS_LightingSaveState or nil,
	}
end

local function applySettingsTable(s)
	if typeof(s) ~= "table" then return end

	if typeof(s.FLOAT_ID) == "string" then FLOAT_ID = s.FLOAT_ID end
	if typeof(s.FLY_ID) == "string" then FLY_ID = s.FLY_ID end
	if typeof(s.FlySpeed) == "number" then flySpeed = math.clamp(math.floor(s.FlySpeed + 0.5), minFlySpeed, maxFlySpeed) end

	if typeof(s.PlayerSpeed) == "number" then
		playerSpeed = math.clamp(math.floor(s.PlayerSpeed + 0.5), 2, 500)
	end

	if typeof(s.CamSubjectMode) == "string" then camAttachMode = s.CamSubjectMode end
	if typeof(s.CamOffset) == "table" and #s.CamOffset >= 3 then
		local x, y, z = tonumber(s.CamOffset[1]) or 0, tonumber(s.CamOffset[2]) or 0, tonumber(s.CamOffset[3]) or 0
		camOffset = Vector3.new(x, y, z)
	end
	if typeof(s.CamFov) == "number" then camFov = math.clamp(s.CamFov, 40, 120) end
	if typeof(s.CamMaxZoom) == "number" then camMaxZoom = math.clamp(s.CamMaxZoom, 5, INFINITE_ZOOM) end

	if typeof(s.AnimOverrides) == "table" then
		for k, v in pairs(s.AnimOverrides) do
			if stateOverrides[k] ~= nil then
				stateOverrides[k] = v
			end
		end
	end
	if typeof(s.LastAnimState) == "string" then lastChosenState = s.LastAnimState end
	if typeof(s.LastAnimCategory) == "string" then lastChosenCategory = s.LastAnimCategory end

	if typeof(s.Lighting) == "table" then
		_G.__SOS_LightingSaveState = s.Lighting
	end
end

local function loadSettings()
	local raw = nil

	if canFileIO() then
		local file = getSettingsFileName()
		if isfile(file) then
			local ok, data = pcall(function()
				return readfile(file)
			end)
			if ok and type(data) == "string" and #data > 0 then
				raw = data
			end
		end
	end

	if not raw then
		local attr = LocalPlayer:GetAttribute(SETTINGS_ATTR_NAME)
		if type(attr) == "string" and #attr > 0 then
			raw = attr
		end
	end

	if raw then
		local t = decodeSettings(raw)
		if t then
			applySettingsTable(t)
		end
	end
end

local function saveSettingsNow()
	local tbl = buildSettingsTable()
	local json = encodeSettings(tbl)
	if not json then return end

	if canFileIO() then
		pcall(function()
			writefile(getSettingsFileName(), json)
		end)
	end

	pcall(function()
		LocalPlayer:SetAttribute(SETTINGS_ATTR_NAME, json)
	end)
end

local function scheduleSave()
	if pendingSave then return end
	pendingSave = true
	task.delay(0.35, function()
		pendingSave = false
		saveSettingsNow()
	end)
end

--------------------------------------------------------------------
-- BUTTON SOUND SYSTEM
--------------------------------------------------------------------
local function ensureClickSoundTemplate()
	if clickSoundTemplate and clickSoundTemplate.Parent then
		return clickSoundTemplate
	end
	if not gui then
		return nil
	end

	local s = Instance.new("Sound")
	s.Name = "SOS_ButtonClickTemplate"
	s.SoundId = BUTTON_CLICK_SOUND_ID
	s.Volume = BUTTON_CLICK_VOLUME
	s.PlayOnRemove = false
	s.Looped = false
	s.Parent = gui
	clickSoundTemplate = s
	return clickSoundTemplate
end

local function playButtonClick()
	local tmpl = ensureClickSoundTemplate()
	if not tmpl then return end

	local s = tmpl:Clone()
	s.Name = "SOS_ButtonClick"
	s.Parent = gui
	pcall(function()
		s:Play()
	end)
	Debris:AddItem(s, 3)
end

local function attachSoundToButton(btn)
	if not btn then return end
	if buttonSoundAttached[btn] then return end
	buttonSoundAttached[btn] = true

	local okActivated = pcall(function()
		btn.Activated:Connect(function()
			playButtonClick()
		end)
	end)

	if not okActivated then
		pcall(function()
			btn.MouseButton1Click:Connect(function()
				playButtonClick()
			end)
		end)
	end
end

local function setupGlobalButtonSounds(root)
	if not root then return end

	for _, d in ipairs(root:GetDescendants()) do
		if d:IsA("TextButton") or d:IsA("ImageButton") then
			attachSoundToButton(d)
		end
	end

	root.DescendantAdded:Connect(function(d)
		if d:IsA("TextButton") or d:IsA("ImageButton") then
			attachSoundToButton(d)
		end
	end)
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
end

--------------------------------------------------------------------
-- FLIGHT ANIMS
--------------------------------------------------------------------
local function loadFlightTracks()
	if not humanoid then return end
	if humanoid.RigType == Enum.HumanoidRigType.R6 then
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

	if floatTrack then pcall(function() floatTrack:Stop(0) end) end
	if flyTrack then pcall(function() flyTrack:Stop(0) end) end
	floatTrack = nil
	flyTrack = nil

	do
		local a = Instance.new("Animation")
		a.AnimationId = FLOAT_ID
		local ok, tr = pcall(function() return animator:LoadAnimation(a) end)
		if ok and tr then
			floatTrack = tr
			floatTrack.Priority = Enum.AnimationPriority.Action
			floatTrack.Looped = true
		else
			floatTrack = nil
			dprint("Float track failed to load:", FLOAT_ID)
		end
	end

	do
		local a = Instance.new("Animation")
		a.AnimationId = FLY_ID
		local ok, tr = pcall(function() return animator:LoadAnimation(a) end)
		if ok and tr then
			flyTrack = tr
			flyTrack.Priority = Enum.AnimationPriority.Action
			flyTrack.Looped = true
		else
			flyTrack = nil
			dprint("Fly track failed to load:", FLY_ID)
		end
	end

	animMode = "Float"
	lastAnimSwitch = 0
end

local function playFloat()
	if humanoid and humanoid.RigType == Enum.HumanoidRigType.R6 then return end
	if not floatTrack then return end

	if flyTrack and flyTrack.IsPlaying then
		pcall(function() flyTrack:Stop(0.25) end)
	end
	if not floatTrack.IsPlaying then
		pcall(function() floatTrack:Play(0.25) end)
	end
end

local function playFly()
	if humanoid and humanoid.RigType == Enum.HumanoidRigType.R6 then return end
	if not flyTrack then return end

	if floatTrack and floatTrack.IsPlaying then
		pcall(function() floatTrack:Stop(0.25) end)
	end
	if not flyTrack.IsPlaying then
		pcall(function() flyTrack:Play(0.25) end)
	end
end

local function stopFlightAnims()
	if floatTrack then pcall(function() floatTrack:Stop(0.25) end) end
	if flyTrack then pcall(function() flyTrack:Stop(0.25) end) end
end

--------------------------------------------------------------------
-- CHARACTER SETUP
--------------------------------------------------------------------
local function getCharacter()
	character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	humanoid = character:WaitForChild("Humanoid")
	rootPart = character:WaitForChild("HumanoidRootPart")
	camera = workspace.CurrentCamera

	rightShoulder = findRightShoulderMotor(character)
	defaultShoulderC0 = rightShoulder and rightShoulder.C0 or nil

	originalRunSoundStates = {}

	if DEFAULT_WALKSPEED == nil then
		DEFAULT_WALKSPEED = humanoid.WalkSpeed
	end
	if playerSpeed == nil then
		playerSpeed = humanoid.WalkSpeed
	end

	if DEFAULT_FOV == nil and camera then
		DEFAULT_FOV = camera.FieldOfView
	end
	if DEFAULT_CAM_MIN_ZOOM == nil then
		DEFAULT_CAM_MIN_ZOOM = LocalPlayer.CameraMinZoomDistance
	end
	if DEFAULT_CAM_MAX_ZOOM == nil then
		DEFAULT_CAM_MAX_ZOOM = LocalPlayer.CameraMaxZoomDistance
	end
	if camFov == nil and DEFAULT_FOV then
		camFov = DEFAULT_FOV
	end
	if camMaxZoom == nil then
		camMaxZoom = INFINITE_ZOOM
	end

	loadFlightTracks()
end

--------------------------------------------------------------------
-- ANIMATE OVERRIDES
--------------------------------------------------------------------
local function getAnimateScript()
	if not character then return nil end
	return character:FindFirstChild("Animate")
end

local function applyStateOverrideToAnimate(stateName, packEntry)
	local animate = getAnimateScript()
	if not animate then
		notify("Anim Packs", "No Animate script found in character.", 3)
		return false
	end

	local hum = humanoid
	if not hum then return false end

	animate.Disabled = true
	stopAllPlayingTracks(hum)

	local function setAnimValue(folderName, childName, assetIdStr)
		local f = animate:FindFirstChild(folderName)
		if not f then return end
		local a = f:FindFirstChild(childName)
		if a and a:IsA("Animation") then
			a.AnimationId = assetIdStr
		end
	end

	local function setDirect(childName, assetIdStr)
		local a = animate:FindFirstChild(childName)
		if a and a:IsA("Animation") then
			a.AnimationId = assetIdStr
		end
	end

	local assetIdStr = toAssetIdString(packEntry)
	if not assetIdStr then
		animate.Disabled = false
		return false
	end

	if stateName == "Idle" then
		setAnimValue("idle", "Animation1", assetIdStr)
		setAnimValue("idle", "Animation2", assetIdStr)
	elseif stateName == "Walk" then
		setAnimValue("walk", "WalkAnim", assetIdStr)
	elseif stateName == "Run" then
		setAnimValue("run", "RunAnim", assetIdStr)
	elseif stateName == "Jump" then
		setAnimValue("jump", "JumpAnim", assetIdStr)
	elseif stateName == "Climb" then
		setAnimValue("climb", "ClimbAnim", assetIdStr)
	elseif stateName == "Fall" then
		setAnimValue("fall", "FallAnim", assetIdStr)
	elseif stateName == "Swim" then
		setAnimValue("swim", "Swim", assetIdStr)
		setAnimValue("swim", "SwimIdle", assetIdStr)
		setDirect("swim", assetIdStr)
	end

	animate.Disabled = false
	pcall(function()
		hum:ChangeState(Enum.HumanoidStateType.Running)
	end)

	return true
end

local function reapplyAllOverridesAfterRespawn()
	for stateName, asset in pairs(stateOverrides) do
		if asset then
			applyStateOverrideToAnimate(stateName, asset)
		end
	end
end

--------------------------------------------------------------------
-- MOVEMENT INPUT
--------------------------------------------------------------------
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

--------------------------------------------------------------------
-- FLIGHT CORE
--------------------------------------------------------------------
local function startFlying()
	if flying or not humanoid or not rootPart then return end
	flying = true

	humanoid.PlatformStand = true
	cacheAndMuteRunSounds()

	bodyGyro = Instance.new("BodyGyro")
	bodyGyro.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
	bodyGyro.P = 1e5
	bodyGyro.D = 1000
	bodyGyro.CFrame = rootPart.CFrame
	bodyGyro.Parent = rootPart

	bodyVel = Instance.new("BodyVelocity")
	bodyVel.MaxForce = Vector3.new(1e5, 1e5, 1e5)
	bodyVel.Velocity = Vector3.new()
	bodyVel.P = 1250
	bodyVel.Parent = rootPart

	currentVelocity = Vector3.new(0, 0, 0)
	currentGyroCFrame = rootPart.CFrame

	local camLook = camera and camera.CFrame.LookVector or Vector3.new(0, 0, -1)
	if camLook.Magnitude < 0.01 then camLook = Vector3.new(0, 0, -1) end
	camLook = camLook.Unit

	local baseCF = CFrame.lookAt(rootPart.Position, rootPart.Position + camLook)
	currentGyroCFrame = baseCF * CFrame.Angles(-math.rad(IDLE_TILT_DEG), 0, 0)
	bodyGyro.CFrame = currentGyroCFrame

	animMode = "Float"
	lastAnimSwitch = 0
	playFloat()
end

local function stopFlying()
	if not flying then return end
	flying = false

	stopFlightAnims()

	if bodyGyro then bodyGyro:Destroy() bodyGyro = nil end
	if bodyVel then bodyVel:Destroy() bodyVel = nil end

	if humanoid then humanoid.PlatformStand = false end

	if rightShoulder and defaultShoulderC0 then
		rightShoulder.C0 = defaultShoulderC0
	end

	restoreRunSounds()
end

--------------------------------------------------------------------
-- UI BUILDING BLOCKS
--------------------------------------------------------------------
local function makeCorner(parent, r)
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, r or 12)
	c.Parent = parent
	return c
end

local function makeStroke(parent, thickness)
	local s = Instance.new("UIStroke")
	s.Color = Color3.fromRGB(200, 40, 40)
	s.Thickness = thickness or 2
	s.Transparency = 0.1
	s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	s.Parent = parent
	return s
end

local function makeGlass(parent)
	parent.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
	parent.BackgroundTransparency = 0.18

	local grad = Instance.new("UIGradient")
	grad.Rotation = 90
	grad.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 18, 22)),
		ColorSequenceKeypoint.new(0.4, Color3.fromRGB(10, 10, 12)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(6, 6, 8)),
	})
	grad.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0.05),
		NumberSequenceKeypoint.new(1, 0.20),
	})
	grad.Parent = parent

	local shine = Instance.new("Frame")
	shine.Name = "Shine"
	shine.BackgroundTransparency = 1
	shine.Size = UDim2.new(1, -8, 0.35, 0)
	shine.Position = UDim2.new(0, 4, 0, 4)
	shine.Parent = parent

	local shineImg = Instance.new("ImageLabel")
	shineImg.BackgroundTransparency = 1
	shineImg.Size = UDim2.new(1, 0, 1, 0)
	shineImg.Image = "rbxassetid://5028857084"
	shineImg.ImageTransparency = 0.72
	shineImg.Parent = shine

	local shineGrad = Instance.new("UIGradient")
	shineGrad.Rotation = 0
	shineGrad.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0.65),
		NumberSequenceKeypoint.new(1, 1),
	})
	shineGrad.Parent = shineImg
end

local function makeText(parent, txt, size, bold)
	local t = Instance.new("TextLabel")
	t.BackgroundTransparency = 1
	t.Text = txt or ""
	t.TextColor3 = Color3.fromRGB(240, 240, 240)
	t.Font = bold and Enum.Font.GothamBold or Enum.Font.Gotham
	t.TextSize = size or 16
	t.TextXAlignment = Enum.TextXAlignment.Left
	t.TextYAlignment = Enum.TextYAlignment.Center
	t.TextWrapped = true
	t.Parent = parent
	return t
end

local function makeButton(parent, txt)
	local b = Instance.new("TextButton")
	b.BackgroundColor3 = Color3.fromRGB(16, 16, 20)
	b.BackgroundTransparency = 0.2
	b.BorderSizePixel = 0
	b.AutoButtonColor = true
	b.Text = txt or "Button"
	b.Font = Enum.Font.GothamBold
	b.TextSize = 14
	b.TextColor3 = Color3.fromRGB(245, 245, 245)
	b.Parent = parent
	makeCorner(b, 10)

	local st = Instance.new("UIStroke")
	st.Color = Color3.fromRGB(200, 40, 40)
	st.Thickness = 1
	st.Transparency = 0.25
	st.Parent = b

	return b
end

local function makeInput(parent, placeholder)
	local tb = Instance.new("TextBox")
	tb.BackgroundColor3 = Color3.fromRGB(16, 16, 20)
	tb.BackgroundTransparency = 0.15
	tb.BorderSizePixel = 0
	tb.ClearTextOnFocus = false
	tb.Text = ""
	tb.PlaceholderText = placeholder or ""
	tb.Font = Enum.Font.Gotham
	tb.TextSize = 14
	tb.TextColor3 = Color3.fromRGB(245, 245, 245)
	tb.PlaceholderColor3 = Color3.fromRGB(170, 170, 170)
	tb.Parent = parent
	makeCorner(tb, 10)

	local st = Instance.new("UIStroke")
	st.Color = Color3.fromRGB(200, 40, 40)
	st.Thickness = 1
	st.Transparency = 0.35
	st.Parent = tb

	return tb
end

local function setTabButtonActive(btn, active)
	local st = btn:FindFirstChildOfClass("UIStroke")
	if st then
		st.Transparency = active and 0.05 or 0.35
		st.Thickness = active and 2 or 1
	end
	btn.BackgroundTransparency = active and 0.08 or 0.22
end

--------------------------------------------------------------------
-- CAMERA APPLY (Shift Lock safe)
--------------------------------------------------------------------
local function getAttachOffset(mode)
	if not character or not humanoid then return Vector3.new(0, 0, 0) end
	if mode == "Humanoid" then
		return Vector3.new(0, 0, 0)
	end

	local head = character:FindFirstChild("Head")
	if not head or not head:IsA("BasePart") then
		return Vector3.new(0, 0, 0)
	end

	local part = nil
	if mode == "Head" then
		part = head
	elseif mode == "HumanoidRootPart" then
		part = character:FindFirstChild("HumanoidRootPart")
	elseif mode == "Torso" then
		part = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
	elseif mode == "UpperTorso" then
		part = character:FindFirstChild("UpperTorso") or character:FindFirstChild("Torso")
	elseif mode == "LowerTorso" then
		part = character:FindFirstChild("LowerTorso")
	end

	if not part or not part:IsA("BasePart") then
		return Vector3.new(0, 0, 0)
	end

	local worldDelta = (part.Position - head.Position)
	if rootPart and rootPart:IsA("BasePart") then
		return rootPart.CFrame:VectorToObjectSpace(worldDelta)
	end
	return worldDelta
end

local function applyCameraSettings()
	if not camera then return end
	if not humanoid then return end

	camera.CameraType = Enum.CameraType.Custom
	camera.CameraSubject = humanoid

	LocalPlayer.CameraMaxZoomDistance = camMaxZoom or INFINITE_ZOOM
	LocalPlayer.CameraMinZoomDistance = DEFAULT_CAM_MIN_ZOOM or 0.5

	if camFov then
		camera.FieldOfView = camFov
	end

	local attachOffset = getAttachOffset(camAttachMode)
	humanoid.CameraOffset = camOffset + attachOffset
end

local function applyPlayerSpeed()
	if humanoid and playerSpeed then
		humanoid.WalkSpeed = playerSpeed
	end
end

--------------------------------------------------------------------
-- START SOUND
--------------------------------------------------------------------
local function playStartSound()
	if not gui then return end
	local s = Instance.new("Sound")
	s.Name = "SOS_StartSound"
	s.SoundId = INTRO_SOUND_ID
	s.Volume = 0.9
	s.Looped = false
	s.Parent = gui
	pcall(function() s:Play() end)
	Debris:AddItem(s, 8)
end

--------------------------------------------------------------------
-- TAG SYSTEM (SOS, AK, KSK) - independent
--------------------------------------------------------------------
local ROLE_COLOR = {
	Normal = Color3.fromRGB(120, 190, 235),
	Owner  = Color3.fromRGB(255, 255, 80),
	Tester = Color3.fromRGB(60, 255, 90),
	Sin    = Color3.fromRGB(235, 70, 70),
}

local OwnerNames = {
	["deniskraily"] = true,
}

local OwnerUserIds = {
	[433636433] = true,
	[196988708] = true,
}

local TesterUserIds = {
	-- leave blank for now
}

local SinProfiles = {
	[2630250935] = { SinName = "Cinna" },
	[105995794]  = { SinName = "Lettuce" },
	[138975737]  = { SinName = "Music" },
	[9159968275] = { SinName = "Music" },
	[4659279349] = { SinName = "Trial" },
	[4495710706] = { SinName = "Games Design" },
	[1575141882] = { SinName = "Heart", Color = Color3.fromRGB(255, 120, 210) },
}

local SOS_MARKER = "𖺗"
local AK_MARKER_1 = "؍؍؍"
local AK_MARKER_2 = "؍"
local KSK_MARKER = ",,κžκåçţíѷåţíѷåţȇđ,,"

-- independent sets
local SosUsers = {}
local AkUsers = {}
local KskUsers = {}

-- tag sizing (about 30 percent smaller than old)
local TAG_W, TAG_H = 144, 36
local TAG_OFFSET_Y = 2.6

local ORB_SIZE = 18
local ORB_OFFSET_Y = 3.35

-- quick stats popup
local statsPopup
local statsPopupLabel
local statsPopupClose

local function isOwner(plr)
	return (OwnerNames[plr.Name] == true) or (OwnerUserIds[plr.UserId] == true)
end

local function getSosRole(plr)
	if not plr then return nil end

	-- owners always have their SOS role tag
	if isOwner(plr) then
		return "Owner"
	end

	-- SOS role tags only appear if they used SOS marker
	if not SosUsers[plr.UserId] then
		return nil
	end

	if TesterUserIds[plr.UserId] then
		return "Tester"
	end

	if SinProfiles[plr.UserId] then
		return "Sin"
	end

	return "Normal"
end

local function getRoleColor(plr, role)
	if role == "Sin" then
		local prof = SinProfiles[plr.UserId]
		if prof and prof.Color then
			return prof.Color
		end
	end
	if role == "Owner" then
		return ROLE_COLOR.Owner
	end
	return ROLE_COLOR[role]
end

local function getTopLine(plr, role)
	if role == "Owner" then
		return "SOS Owner"
	end
	if role == "Tester" then
		return "SOS Tester"
	end
	if role == "Sin" then
		local prof = SinProfiles[plr.UserId]
		if prof and prof.SinName and #prof.SinName > 0 then
			return "The Sin of " .. prof.SinName
		end
		return "The Sin of ???"
	end
	return "SOS User"
end

local function teleportBehind(plr, studsBack)
	if not plr or plr == LocalPlayer then return end
	local myChar = LocalPlayer.Character
	local theirChar = plr.Character
	if not myChar or not theirChar then return end

	local myHRP = myChar:FindFirstChild("HumanoidRootPart")
	local theirHRP = theirChar:FindFirstChild("HumanoidRootPart")
	if not myHRP or not theirHRP then return end

	local back = studsBack or 5
	myHRP.CFrame = theirHRP.CFrame * CFrame.new(0, 0, back)
end

local function destroyTagGui(char, name)
	if not char then return end
	local old = char:FindFirstChild(name)
	if old then
		old:Destroy()
	end
end

local function ensureStatsPopup()
	if statsPopup and statsPopup.Parent then return end
	if not gui then return end

	statsPopup = Instance.new("Frame")
	statsPopup.Name = "SOS_StatsPopup"
	statsPopup.AnchorPoint = Vector2.new(0.5, 0.5)
	statsPopup.Position = UDim2.new(0.5, 0, 0.5, 0)
	statsPopup.Size = UDim2.new(0, 380, 0, 170)
	statsPopup.BorderSizePixel = 0
	statsPopup.Visible = false
	statsPopup.Parent = gui
	makeCorner(statsPopup, 14)
	makeGlass(statsPopup)
	makeStroke(statsPopup, 2)

	statsPopupLabel = Instance.new("TextLabel")
	statsPopupLabel.BackgroundTransparency = 1
	statsPopupLabel.Size = UDim2.new(1, -18, 1, -54)
	statsPopupLabel.Position = UDim2.new(0, 9, 0, 10)
	statsPopupLabel.Font = Enum.Font.Gotham
	statsPopupLabel.TextSize = 14
	statsPopupLabel.TextColor3 = Color3.fromRGB(245, 245, 245)
	statsPopupLabel.TextXAlignment = Enum.TextXAlignment.Left
	statsPopupLabel.TextYAlignment = Enum.TextYAlignment.Top
	statsPopupLabel.TextWrapped = true
	statsPopupLabel.Text = ""
	statsPopupLabel.Parent = statsPopup

	statsPopupClose = makeButton(statsPopup, "Close")
	statsPopupClose.AnchorPoint = Vector2.new(0.5, 1)
	statsPopupClose.Position = UDim2.new(0.5, 0, 1, -10)
	statsPopupClose.Size = UDim2.new(0, 140, 0, 34)
	statsPopupClose.MouseButton1Click:Connect(function()
		statsPopup.Visible = true
	end)
end

local function showPlayerStats(plr)
	ensureStatsPopup()
	if not statsPopup then return end

	local ageDays = 0
	pcall(function()
		ageDays = plr.AccountAge or 0
	end)

	local role = getSosRole(plr)
	local roleLine = role and (getTopLine(plr, role)) or "No SOS role tag"
	local akLine = AkUsers[plr.UserId] and "AK: Yes" or "AK: No"
	local kskLine = KskUsers[plr.UserId] and "KSK: Yes" or "KSK: No"

	local txt = ""
	txt = txt .. "User: " .. plr.Name .. "\n"
	txt = txt .. "UserId: " .. tostring(plr.UserId) .. "\n"
	txt = txt .. "AccountAge: " .. tostring(ageDays) .. " days\n\n"
	txt = txt .. "SOS Role: " .. roleLine .. "\n"
	txt = txt .. akLine .. "\n"
	txt = txt .. kskLine .. "\n"

	statsPopupLabel.Text = txt
	statsPopup.Visible = true
end

local function createOwnerGlitch(label)
	if not label then return end

	local base = label.Text
	local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*"
	local rng = Random.new()

	task.spawn(function()
		while label and label.Parent do
			task.wait(rng:NextNumber(0.08, 0.14))

			if not label.Parent then break end
			if rng:NextNumber() < 0.55 then
				local out = {}
				for i = 1, #base do
					if rng:NextNumber() < 0.22 then
						local idx = rng:NextInteger(1, #chars)
						table.insert(out, chars:sub(idx, idx))
					else
						table.insert(out, base:sub(i, i))
					end
				end
				label.Text = table.concat(out)
			else
				label.Text = base
			end

			label.TextTransparency = (rng:NextNumber() < 0.12) and 0.15 or 0
		end
	end)
end

local function makeTagButtonCommon(btn, plr)
	btn.Activated:Connect(function()
		local holdingCtrl = UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)
		if holdingCtrl then
			showPlayerStats(plr)
		else
			teleportBehind(plr, 5)
		end
	end)
end

local function createSosRoleTag(plr)
	if not plr then return end
	local char = plr.Character
	if not char then return end

	local role = getSosRole(plr)
	if not role then
		destroyTagGui(char, "SOS_RoleTag")
		return
	end

	local head = char:FindFirstChild("Head")
	local hrp = char:FindFirstChild("HumanoidRootPart")
	local adornee = (head and head:IsA("BasePart")) and head or ((hrp and hrp:IsA("BasePart")) and hrp or nil)
	if not adornee then return end

	destroyTagGui(char, "SOS_RoleTag")

	local color = getRoleColor(plr, role) or Color3.fromRGB(240, 240, 240)

	local bb = Instance.new("BillboardGui")
	bb.Name = "SOS_RoleTag"
	bb.Adornee = adornee
	bb.AlwaysOnTop = true
	bb.Size = UDim2.new(0, TAG_W, 0, TAG_H)
	bb.StudsOffset = Vector3.new(0, TAG_OFFSET_Y, 0)
	bb.Parent = char

	local btn = Instance.new("TextButton")
	btn.Name = "ClickArea"
	btn.Size = UDim2.new(1, 0, 1, 0)
	btn.BorderSizePixel = 0
	btn.Text = ""
	btn.AutoButtonColor = true
	btn.Parent = bb
	makeCorner(btn, 10)

	-- Owner special styling
	if role == "Owner" then
		btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		btn.BackgroundTransparency = 0.12

		local grad = Instance.new("UIGradient")
		grad.Rotation = 90
		grad.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 10, 12)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0)),
		})
		grad.Parent = btn

		local stroke = Instance.new("UIStroke")
		stroke.Color = Color3.fromRGB(0, 0, 0)
		stroke.Thickness = 2
		stroke.Transparency = 0.15
		stroke.Parent = btn
	else
		btn.BackgroundColor3 = Color3.fromRGB(16, 16, 20)
		btn.BackgroundTransparency = 0.22

		local grad = Instance.new("UIGradient")
		grad.Rotation = 90
		grad.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(24, 24, 30)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 12)),
		})
		grad.Parent = btn

		local stroke = Instance.new("UIStroke")
		stroke.Color = color
		stroke.Thickness = 2
		stroke.Transparency = 0.05
		stroke.Parent = btn
	end

	local top = Instance.new("TextLabel")
	top.BackgroundTransparency = 1
	top.Size = UDim2.new(1, -10, 0, 18)
	top.Position = UDim2.new(0, 5, 0, 3)
	top.Font = Enum.Font.GothamBold
	top.TextSize = 13
	top.TextXAlignment = Enum.TextXAlignment.Center
	top.TextYAlignment = Enum.TextYAlignment.Center
	top.Text = getTopLine(plr, role)
	top.Parent = btn

	if role == "Owner" then
		top.TextColor3 = Color3.fromRGB(255, 255, 80)
		local st = Instance.new("UIStroke")
		st.Color = Color3.fromRGB(0, 0, 0)
		st.Transparency = 0.35
		st.Thickness = 1
		st.Parent = top
		createOwnerGlitch(top)
	else
		top.TextColor3 = color
	end

	local bottom = Instance.new("TextLabel")
	bottom.BackgroundTransparency = 1
	bottom.Size = UDim2.new(1, -10, 0, 16)
	bottom.Position = UDim2.new(0, 5, 0, 19)
	bottom.Font = Enum.Font.Gotham
	bottom.TextSize = 12
	bottom.TextColor3 = Color3.fromRGB(230, 230, 230)
	bottom.TextXAlignment = Enum.TextXAlignment.Center
	bottom.TextYAlignment = Enum.TextYAlignment.Center
	bottom.Text = plr.Name
	bottom.Parent = btn

	makeTagButtonCommon(btn, plr)
end

local function createOrbTag(plr, kind)
	if not plr then return end
	local char = plr.Character
	if not char then return end

	local isOn = false
	local orbName = ""
	local orbText = ""
	local orbColor = Color3.fromRGB(255, 60, 60)

	if kind == "AK" then
		isOn = (AkUsers[plr.UserId] == true)
		orbName = "SOS_AKTag"
		orbText = "AK"
		orbColor = Color3.fromRGB(255, 60, 60)
	elseif kind == "KSK" then
		isOn = (KskUsers[plr.UserId] == true)
		orbName = "SOS_KSKTag"
		orbText = "KSK"
		orbColor = Color3.fromRGB(80, 170, 255)
	else
		return
	end

	if not isOn then
		destroyTagGui(char, orbName)
		return
	end

	local head = char:FindFirstChild("Head")
	local hrp = char:FindFirstChild("HumanoidRootPart")
	local adornee = (head and head:IsA("BasePart")) and head or ((hrp and hrp:IsA("BasePart")) and hrp or nil)
	if not adornee then return end

	destroyTagGui(char, orbName)

	local bb = Instance.new("BillboardGui")
	bb.Name = orbName
	bb.Adornee = adornee
	bb.AlwaysOnTop = true
	bb.Size = UDim2.new(0, ORB_SIZE, 0, ORB_SIZE)
	bb.StudsOffset = Vector3.new(0, ORB_OFFSET_Y, 0)
	bb.Parent = char

	local btn = Instance.new("TextButton")
	btn.Name = "ClickArea"
	btn.Size = UDim2.new(1, 0, 1, 0)
	btn.BorderSizePixel = 0
	btn.Text = orbText
	btn.AutoButtonColor = true
	btn.Font = Enum.Font.GothamBlack
	btn.TextSize = (kind == "KSK") and 9 or 10
	btn.TextXAlignment = Enum.TextXAlignment.Center
	btn.TextYAlignment = Enum.TextYAlignment.Center
	btn.TextColor3 = orbColor
	btn.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
	btn.BackgroundTransparency = 0.12
	btn.Parent = bb
	makeCorner(btn, 999)

	local stroke = Instance.new("UIStroke")
	stroke.Color = Color3.fromRGB(0, 0, 0)
	stroke.Transparency = 0.25
	stroke.Thickness = 1
	stroke.Parent = btn

	makeTagButtonCommon(btn, plr)
end

local function refreshAllTagsForPlayer(plr)
	if not plr or not plr.Character then return end
	createSosRoleTag(plr)
	createOrbTag(plr, "AK")
	createOrbTag(plr, "KSK")
end

local function hookPlayerForTags(plr)
	if not plr then return end
	plr.CharacterAdded:Connect(function()
		task.wait(0.1)
		refreshAllTagsForPlayer(plr)
	end)
	if plr.Character then
		task.wait(0.1)
		refreshAllTagsForPlayer(plr)
	end
end

local function onSosSeen(userId)
	if typeof(userId) ~= "number" then return end
	SosUsers[userId] = true
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr.UserId == userId then
			refreshAllTagsForPlayer(plr)
			break
		end
	end
end

local function onAkSeen(userId)
	if typeof(userId) ~= "number" then return end
	AkUsers[userId] = true
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr.UserId == userId then
			refreshAllTagsForPlayer(plr)
			break
		end
	end
end

local function onKskSeen(userId)
	if typeof(userId) ~= "number" then return end
	KskUsers[userId] = true
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr.UserId == userId then
			refreshAllTagsForPlayer(plr)
			break
		end
	end
end

local function trySendChat(text)
	-- TextChatService path
	local ok = pcall(function()
		if TextChatService and TextChatService.TextChannels then
			local general = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
			if general and general.SendAsync then
				general:SendAsync(text)
				return true
			end
		end
		return false
	end)
	if ok == true then
		return true
	end

	-- Legacy default chat events path
	local ok2 = pcall(function()
		local events = ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
		if events then
			local say = events:FindFirstChild("SayMessageRequest")
			if say and say.FireServer then
				say:FireServer(text, "All")
				return true
			end
		end
		return false
	end)
	return ok2 == true
end

local function broadcastSosMarker()
	onSosSeen(LocalPlayer.UserId)
	trySendChat(SOS_MARKER)
end

local function broadcastAkMarker()
	onAkSeen(LocalPlayer.UserId)
	trySendChat(AK_MARKER_1)
end

local function broadcastKskMarker()
	onKskSeen(LocalPlayer.UserId)
	trySendChat(KSK_MARKER)
end

local function hookChatListeners()
	-- TextChatService listener
	if TextChatService and TextChatService.MessageReceived then
		TextChatService.MessageReceived:Connect(function(msg)
			if not msg then return end
			local text = msg.Text or ""
			local src = msg.TextSource

			if not src or not src.UserId then return end
			local uid = src.UserId

			if text == SOS_MARKER then
				onSosSeen(uid)
				return
			end

			if text == AK_MARKER_1 or text == AK_MARKER_2 then
				onAkSeen(uid)
				return
			end

			if text == KSK_MARKER then
				onKskSeen(uid)
				return
			end
		end)
	end

	-- Player.Chatted fallback
	for _, plr in ipairs(Players:GetPlayers()) do
		pcall(function()
			plr.Chatted:Connect(function(message)
				if message == SOS_MARKER then
					onSosSeen(plr.UserId)
				elseif message == AK_MARKER_1 or message == AK_MARKER_2 then
					onAkSeen(plr.UserId)
				elseif message == KSK_MARKER then
					onKskSeen(plr.UserId)
				end
			end)
		end)
	end

	Players.PlayerAdded:Connect(function(plr)
		pcall(function()
			plr.Chatted:Connect(function(message)
				if message == SOS_MARKER then
					onSosSeen(plr.UserId)
				elseif message == AK_MARKER_1 or message == AK_MARKER_2 then
					onAkSeen(plr.UserId)
				elseif message == KSK_MARKER then
					onKskSeen(plr.UserId)
				end
			end)
		end)
	end)
end

--------------------------------------------------------------------
-- UI: BUILD
--------------------------------------------------------------------
local function createUI()
	safeDestroy(gui)

	gui = Instance.new("ScreenGui")
	gui.Name = "SOS_HUD"
	gui.ResetOnSpawn = false
	gui.IgnoreGuiInset = true
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

	ensureClickSoundTemplate()
	setupGlobalButtonSounds(gui)
	playStartSound()

	ensureStatsPopup()

	-- FPS label
	fpsLabel = Instance.new("TextLabel")
	fpsLabel.Name = "FPS"
	fpsLabel.BackgroundTransparency = 1
	fpsLabel.AnchorPoint = Vector2.new(1, 1)
	fpsLabel.Position = UDim2.new(1, -6, 1, -6)
	fpsLabel.Size = UDim2.new(0, 140, 0, 18)
	fpsLabel.Font = Enum.Font.GothamBold
	fpsLabel.TextSize = 12
	fpsLabel.TextXAlignment = Enum.TextXAlignment.Right
	fpsLabel.TextYAlignment = Enum.TextYAlignment.Bottom
	fpsLabel.Text = "fps"
	fpsLabel.TextColor3 = Color3.fromRGB(80, 255, 80)
	fpsLabel.Parent = gui

	-- Handle
	menuHandle = Instance.new("Frame")
	menuHandle.Name = "MenuHandle"
	menuHandle.AnchorPoint = Vector2.new(0.5, 0)
	menuHandle.Position = UDim2.new(0.5, 0, 0, 6)
	menuHandle.Size = UDim2.new(0, 560, 0, 42)
	menuHandle.BorderSizePixel = 0
	menuHandle.Parent = gui
	makeCorner(menuHandle, 16)
	makeGlass(menuHandle)
	makeStroke(menuHandle, 2)

	arrowButton = Instance.new("TextButton")
	arrowButton.Name = "Arrow"
	arrowButton.BackgroundTransparency = 1
	arrowButton.Size = UDim2.new(0, 40, 0, 40)
	arrowButton.Position = UDim2.new(0, 8, 0, 1)
	arrowButton.Text = "˄"
	arrowButton.Font = Enum.Font.GothamBold
	arrowButton.TextSize = 22
	arrowButton.TextColor3 = Color3.fromRGB(240, 240, 240)
	arrowButton.Parent = menuHandle

	local title = Instance.new("TextLabel")
	title.BackgroundTransparency = 1
	title.Size = UDim2.new(1, -90, 1, 0)
	title.Position = UDim2.new(0, 70, 0, 0)
	title.Font = Enum.Font.GothamBold
	title.TextSize = 18
	title.Text = "SOS HUD"
	title.TextColor3 = Color3.fromRGB(245, 245, 245)
	title.TextXAlignment = Enum.TextXAlignment.Center
	title.Parent = menuHandle

	-- Menu frame
	menuFrame = Instance.new("Frame")
	menuFrame.Name = "Menu"
	menuFrame.AnchorPoint = Vector2.new(0.5, 0)
	menuFrame.Position = UDim2.new(0.5, 0, 0, 52)
	menuFrame.Size = UDim2.new(0, 560, 0, 390)
	menuFrame.BorderSizePixel = 0
	menuFrame.Parent = gui
	makeCorner(menuFrame, 16)
	makeGlass(menuFrame)
	makeStroke(menuFrame, 2)

	-- Tabs bar
	tabsBar = Instance.new("ScrollingFrame")
	tabsBar.Name = "TabsBar"
	tabsBar.BackgroundTransparency = 1
	tabsBar.BorderSizePixel = 0
	tabsBar.Position = UDim2.new(0, 14, 0, 10)
	tabsBar.Size = UDim2.new(1, -28, 0, 46)
	tabsBar.CanvasSize = UDim2.new(0, 0, 0, 0)
	tabsBar.ScrollBarThickness = 2
	tabsBar.ScrollingDirection = Enum.ScrollingDirection.X
	tabsBar.AutomaticCanvasSize = Enum.AutomaticSize.X
	tabsBar.Parent = menuFrame

	local tabsLayout = Instance.new("UIListLayout")
	tabsLayout.FillDirection = Enum.FillDirection.Horizontal
	tabsLayout.SortOrder = Enum.SortOrder.LayoutOrder
	tabsLayout.Padding = UDim.new(0, 10)
	tabsLayout.Parent = tabsBar

	-- Pages holder
	pagesHolder = Instance.new("Frame")
	pagesHolder.Name = "PagesHolder"
	pagesHolder.BackgroundTransparency = 1
	pagesHolder.Position = UDim2.new(0, 14, 0, 66)
	pagesHolder.Size = UDim2.new(1, -28, 1, -80)
	pagesHolder.ClipsDescendants = true
	pagesHolder.Parent = menuFrame

	local pages = {}
	local function makePage(name)
		local p = Instance.new("Frame")
		p.Name = name
		p.BackgroundTransparency = 1
		p.Size = UDim2.new(1, 0, 1, 0)
		p.Position = UDim2.new(0, 0, 0, 0)
		p.Visible = false
		p.Parent = pagesHolder

		local scroll = Instance.new("ScrollingFrame")
		scroll.Name = "Scroll"
		scroll.BackgroundTransparency = 1
		scroll.BorderSizePixel = 0
		scroll.Size = UDim2.new(1, 0, 1, 0)
		scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
		scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
		scroll.ScrollBarThickness = 4
		scroll.Parent = p

		local pad = Instance.new("UIPadding")
		pad.PaddingTop = UDim.new(0, 8)
		pad.PaddingBottom = UDim.new(0, 12)
		pad.PaddingLeft = UDim.new(0, 6)
		pad.PaddingRight = UDim.new(0, 6)
		pad.Parent = scroll

		local layout = Instance.new("UIListLayout")
		layout.SortOrder = Enum.SortOrder.LayoutOrder
		layout.Padding = UDim.new(0, 10)
		layout.Parent = scroll

		pages[name] = { Page = p, Scroll = scroll }
		return p, scroll
	end

	local infoPage, infoScroll = makePage("Info")
	local controlsPage, controlsScroll = makePage("Controls")
	local flyPage, flyScroll = makePage("Fly")
	local animPage, animScroll = makePage("Anim Packs")
	local playerPage, playerScroll = makePage("Player")
	local cameraPage, cameraScroll = makePage("Camera")
	local lightingPage, lightingScroll = makePage("Lighting")
	local serverPage, serverScroll = makePage("Server")
	local clientPage, clientScroll = makePage("Client")

	local micupPage, micupScroll = nil, nil
	do
		local placeIdStr = tostring(game.PlaceId)
		if MICUP_PLACE_IDS[placeIdStr] then
			micupPage, micupScroll = makePage("Mic up")
		end
	end

	----------------------------------------------------------------
	-- INFO TAB
	----------------------------------------------------------------
	do
		local header = makeText(infoScroll, "The Sins Of Scripting HUD", 16, true)
		header.Size = UDim2.new(1, 0, 0, 22)

		local msg = makeText(infoScroll,
			"Discord:\nPress to copy, or it will open if copy isn't supported.\n\nTag Markers:\nSOS is ¬\nAK is ؍؍؍ or ؍\nKSK is ,,κžκåçţíѷåţíѷåţȇđ,,\n\nTags are independent.\nClick tag to teleport behind.\nHold LeftCtrl then click for stats.\n\nIf this breaks, it was definitely not my fault. Probably ping.",
			14, false
		)
		msg.Size = UDim2.new(1, 0, 0, 220)

		local row = Instance.new("Frame")
		row.BackgroundTransparency = 1
		row.Size = UDim2.new(1, 0, 0, 44)
		row.Parent = infoScroll

		local rowLay = Instance.new("UIListLayout")
		rowLay.FillDirection = Enum.FillDirection.Horizontal
		rowLay.Padding = UDim.new(0, 10)
		rowLay.VerticalAlignment = Enum.VerticalAlignment.Center
		rowLay.Parent = row

		local discordBtn = makeButton(row, "(SOS Server)")
		discordBtn.Size = UDim2.new(0, 180, 0, 36)

		local linkBox = makeInput(row, "Press to copy")
		linkBox.Size = UDim2.new(1, -200, 0, 36)
		linkBox.Text = DISCORD_LINK

		discordBtn.MouseButton1Click:Connect(function()
			local copied = false
			pcall(function()
				if typeof(setclipboard) == "function" then
					setclipboard(DISCORD_LINK)
					copied = true
				end
			end)

			if copied then
				notify("SOS Server", "Copied to clipboard.", 2)
			else
				pcall(function() linkBox:CaptureFocus() end)
				pcall(function() GuiService:OpenBrowserWindow(DISCORD_LINK) end)
				notify("SOS Server", "Press to copy (use the box).", 3)
			end
		end)
	end

	----------------------------------------------------------------
	-- CONTROLS TAB
	----------------------------------------------------------------
	do
		local header = makeText(controlsScroll, "Controls", 16, true)
		header.Size = UDim2.new(1, 0, 0, 22)

		local info = makeText(controlsScroll,
			"PC:\n- Fly Toggle: " .. flightToggleKey.Name .. "\n- Menu Toggle: " .. menuToggleKey.Name .. "\n- Move: WASD + Q/E\n\nTags:\n- Click: teleport behind\n- LeftCtrl + Click: stats popup\n\nMarkers:\n- SOS: ¬\n- AK: ؍؍؍ or ؍\n- KSK: ,,κžκåçţíѷåţíѷåţȇđ,,",
			14, false
		)
		info.Size = UDim2.new(1, 0, 0, 220)

		local bindRow = Instance.new("Frame")
		bindRow.BackgroundTransparency = 1
		bindRow.Size = UDim2.new(1, 0, 0, 74)
		bindRow.Parent = controlsScroll

		local function makeBindLine(labelText, getKeyFn, setKeyFn)
			local line = Instance.new("Frame")
			line.BackgroundTransparency = 1
			line.Size = UDim2.new(1, 0, 0, 32)
			line.Parent = bindRow

			local l = makeText(line, labelText, 14, true)
			l.Size = UDim2.new(0, 170, 1, 0)

			local btn = makeButton(line, getKeyFn().Name)
			btn.Size = UDim2.new(0, 110, 0, 30)
			btn.Position = UDim2.new(0, 180, 0, 1)

			local hint = makeText(line, "Click then press a key", 12, false)
			hint.Size = UDim2.new(1, -300, 1, 0)
			hint.Position = UDim2.new(0, 300, 0, 0)
			hint.TextColor3 = Color3.fromRGB(190, 190, 190)

			local waiting = false
			btn.MouseButton1Click:Connect(function()
				waiting = true
				btn.Text = "..."
			end)

			UserInputService.InputBegan:Connect(function(input, gp)
				if gp then return end
				if not waiting then return end
				if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
				waiting = false
				setKeyFn(input.KeyCode)
				btn.Text = getKeyFn().Name
				scheduleSave()
			end)
		end

		makeBindLine("Flight Toggle Key:", function() return flightToggleKey end, function(k) flightToggleKey = k end)
		makeBindLine("Menu Toggle Key:", function() return menuToggleKey end, function(k) menuToggleKey = k end)

		local row = Instance.new("Frame")
		row.BackgroundTransparency = 1
		row.Size = UDim2.new(1, 0, 0, 44)
		row.Parent = controlsScroll

		local lay = Instance.new("UIListLayout")
		lay.FillDirection = Enum.FillDirection.Horizontal
		lay.Padding = UDim.new(0, 10)
		lay.Parent = row

		local sosBtn = makeButton(row, "Broadcast SOS (¬)")
		sosBtn.Size = UDim2.new(0, 180, 0, 36)
		sosBtn.MouseButton1Click:Connect(function()
			broadcastSosMarker()
			notify("Tags", "Sent SOS marker.", 2)
		end)

		local akBtn = makeButton(row, "Broadcast AK (؍؍؍)")
		akBtn.Size = UDim2.new(0, 180, 0, 36)
		akBtn.MouseButton1Click:Connect(function()
			broadcastAkMarker()
			notify("Tags", "Sent AK marker.", 2)
		end)

		local kskBtn = makeButton(row, "Broadcast KSK")
		kskBtn.Size = UDim2.new(0, 140, 0, 36)
		kskBtn.MouseButton1Click:Connect(function()
			broadcastKskMarker()
			notify("Tags", "Sent KSK marker.", 2)
		end)
	end

	----------------------------------------------------------------
	-- FLY TAB (kept)
	----------------------------------------------------------------
	do
		local header = makeText(flyScroll, "Flight Emotes", 16, true)
		header.Size = UDim2.new(1, 0, 0, 22)

		local warning = makeText(flyScroll,
			"Animation IDs for flight must be a Published Creator Store EMOTE assetid.\nIf you paste random IDs, it can fail.",
			13, false
		)
		warning.TextColor3 = Color3.fromRGB(220, 220, 220)
		warning.Size = UDim2.new(1, 0, 0, 58)

		local function makeIdRow(labelText, getFn, setFn, resetFn)
			local row = Instance.new("Frame")
			row.BackgroundTransparency = 1
			row.Size = UDim2.new(1, 0, 0, 44)
			row.Parent = flyScroll

			local l = makeText(row, labelText, 14, true)
			l.Size = UDim2.new(0, 120, 1, 0)

			local box = makeInput(row, "rbxassetid://... or number")
			box.Size = UDim2.new(1, -240, 0, 36)
			box.Position = UDim2.new(0, 130, 0, 4)
			box.Text = getFn()

			local applyBtn = makeButton(row, "Apply")
			applyBtn.Size = UDim2.new(0, 70, 0, 36)
			applyBtn.AnchorPoint = Vector2.new(1, 0)
			applyBtn.Position = UDim2.new(1, -90, 0, 4)

			local resetBtn = makeButton(row, "Reset")
			resetBtn.Size = UDim2.new(0, 70, 0, 36)
			resetBtn.AnchorPoint = Vector2.new(1, 0)
			resetBtn.Position = UDim2.new(1, -10, 0, 4)

			applyBtn.MouseButton1Click:Connect(function()
				local parsed = toAssetIdString(box.Text)
				if not parsed then
					notify("Flight Emotes", "Invalid ID. Use rbxassetid://123 or just 123", 3)
					return
				end
				setFn(parsed)
				loadFlightTracks()
				if flying then
					stopFlightAnims()
					playFloat()
				end
				scheduleSave()
				notify("Flight Emotes", "Applied.", 2)
			end)

			resetBtn.MouseButton1Click:Connect(function()
				resetFn()
				box.Text = getFn()
				loadFlightTracks()
				if flying then
					stopFlightAnims()
					playFloat()
				end
				scheduleSave()
				notify("Flight Emotes", "Reset to default.", 2)
			end)
		end

		makeIdRow("FLOAT_ID:", function() return FLOAT_ID end, function(v) FLOAT_ID = v end, function() FLOAT_ID = DEFAULT_FLOAT_ID end)
		makeIdRow("FLY_ID:", function() return FLY_ID end, function(v) FLY_ID = v end, function() FLY_ID = DEFAULT_FLY_ID end)
	end

	----------------------------------------------------------------
	-- CLIENT TAB (placeholder kept)
	----------------------------------------------------------------
	do
		local t = makeText(clientScroll, "Client\n(Coming soon)", 14, true)
		t.Size = UDim2.new(1, 0, 0, 50)
	end

	----------------------------------------------------------------
	-- Tabs buttons + switching
	----------------------------------------------------------------
	local tabButtons = {}
	local activePageName = "Info"

	local function switchPage(pageName)
		if pageName == activePageName then return end
		local newPg = pages[pageName]
		local oldPg = pages[activePageName]
		if not newPg then return end

		for n, btn in pairs(tabButtons) do
			setTabButtonActive(btn, n == pageName)
		end

		local newFrame = newPg.Page
		local oldFrame = oldPg and oldPg.Page or nil

		newFrame.Visible = true
		newFrame.Position = UDim2.new(0, 26, 0, 0)

		tween(newFrame, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = UDim2.new(0, 0, 0, 0)
		})

		if oldFrame then
			local twn = tween(oldFrame, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
				Position = UDim2.new(0, -26, 0, 0)
			})
			twn.Completed:Connect(function()
				oldFrame.Visible = false
				oldFrame.Position = UDim2.new(0, 0, 0, 0)
			end)
		end

		activePageName = pageName
	end

	local function addTabButton(pageName, order, w)
		local b = makeButton(tabsBar, pageName)
		b.LayoutOrder = order or 1
		b.Size = UDim2.new(0, w or 120, 0, 38)
		tabButtons[pageName] = b

		b.MouseButton1Click:Connect(function()
			switchPage(pageName)
		end)
	end

	addTabButton("Info", 1)
	addTabButton("Controls", 2, 130)
	addTabButton("Fly", 3)
	addTabButton("Anim Packs", 4, 140)
	addTabButton("Player", 5)
	addTabButton("Camera", 6)
	addTabButton("Lighting", 7)
	addTabButton("Server", 8)
	addTabButton("Client", 9)
	if micupPage then
		addTabButton("Mic up", 10, 120)
	end

	pages["Info"].Page.Visible = true
	setTabButtonActive(tabButtons["Info"], true)

	----------------------------------------------------------------
	-- Menu toggle
	----------------------------------------------------------------
	menuOpen = false
	menuFrame.Visible = false
	arrowButton.Text = "˄"

	local openPos = menuFrame.Position

	local function getClosedPos()
		local h = menuFrame.AbsoluteSize.Y
		if h and h > 0 then
			return UDim2.new(openPos.X.Scale, openPos.X.Offset, openPos.Y.Scale, openPos.Y.Offset - (h + 10))
		end
		return UDim2.new(openPos.X.Scale, openPos.X.Offset, openPos.Y.Scale, openPos.Y.Offset - (menuFrame.Size.Y.Offset + 10))
	end

	local function setMenu(open, instant)
		menuOpen = open
		arrowButton.Text = open and "˅" or "˄"

		if menuTween then
			pcall(function() menuTween:Cancel() end)
			menuTween = nil
		end

		local closedPos = getClosedPos()

		if instant then
			menuFrame.Visible = open
			menuFrame.Position = open and openPos or closedPos
			menuFrame.BackgroundTransparency = open and 0.18 or 1
			return
		end

		if open then
			menuFrame.Visible = true
			menuFrame.Position = closedPos
			menuFrame.BackgroundTransparency = 1
			menuTween = tween(menuFrame, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Position = openPos,
				BackgroundTransparency = 0.18
			})
		else
			menuTween = tween(menuFrame, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
				Position = closedPos,
				BackgroundTransparency = 1
			})
			menuTween.Completed:Connect(function()
				if not menuOpen then
					menuFrame.Visible = false
				end
			end)
		end
	end

	arrowButton.MouseButton1Click:Connect(function()
		setMenu(not menuOpen, false)
	end)

	setMenu(false, true)

	----------------------------------------------------------------
	-- Mobile Fly button
	----------------------------------------------------------------
	local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
	if isMobile then
		mobileFlyButton = makeButton(gui, "Fly")
		mobileFlyButton.Name = "MobileFly"
		mobileFlyButton.AnchorPoint = Vector2.new(1, 1)
		mobileFlyButton.Position = MOBILE_FLY_POS
		mobileFlyButton.Size = MOBILE_FLY_SIZE
		mobileFlyButton.TextSize = 18

		mobileFlyButton.MouseButton1Click:Connect(function()
			if flying then stopFlying() else startFlying() end
		end)
	end

	applyPlayerSpeed()
	applyCameraSettings()
end

--------------------------------------------------------------------
-- INPUT
--------------------------------------------------------------------
UserInputService.InputBegan:Connect(function(input, gp)
	if gp then return end

	if input.KeyCode == flightToggleKey then
		if flying then stopFlying() else startFlying() end
	elseif input.KeyCode == menuToggleKey then
		if arrowButton then
			pcall(function()
				arrowButton:Activate()
			end)
		end
	elseif input.KeyCode == Enum.KeyCode.Escape then
		if statsPopup then
			statsPopup.Visible = false
		end
	end
end)

--------------------------------------------------------------------
-- RENDER LOOP (Flight + FPS)
--------------------------------------------------------------------
RunService.RenderStepped:Connect(function(dt)
	fpsAcc = fpsAcc + dt
	fpsFrames = fpsFrames + 1
	if fpsAcc >= 0.25 then
		fpsValue = math.floor((fpsFrames / fpsAcc) + 0.5)
		fpsAcc = 0
		fpsFrames = 0
	end

	if fpsLabel then
		fpsLabel.Text = tostring(fpsValue) .. " fps"
		if fpsValue < 40 then
			fpsLabel.TextColor3 = Color3.fromRGB(255, 60, 60)
		elseif fpsValue < 60 then
			fpsLabel.TextColor3 = Color3.fromRGB(255, 220, 80)
		elseif fpsValue < 76 then
			fpsLabel.TextColor3 = Color3.fromRGB(80, 255, 80)
		elseif fpsValue < 121 then
			fpsLabel.TextColor3 = Color3.fromRGB(80, 255, 220)
		elseif fpsValue < 241 then
			fpsLabel.TextColor3 = Color3.fromRGB(80, 140, 255)
		else
			rainbowHue = (rainbowHue + dt * 0.6) % 1
			fpsLabel.TextColor3 = Color3.fromHSV(rainbowHue, 1, 1)
		end
	end

	if not flying or not rootPart or not camera or not bodyGyro or not bodyVel then return end

	updateMovementInput()

	local camCF = camera.CFrame
	local camLook = camCF.LookVector
	local camRight = camCF.RightVector

	local moveDir = Vector3.new(0, 0, 0)
	moveDir = moveDir + camLook * (-moveInput.Z)
	moveDir = moveDir + camRight * (moveInput.X)
	moveDir = moveDir + Vector3.new(0, verticalInput, 0)

	local moveMagnitude = moveDir.Magnitude
	local hasHorizontal = Vector3.new(moveInput.X, 0, moveInput.Z).Magnitude > 0.01

	if moveMagnitude > 0 then
		local unit = moveDir.Unit
		local targetVel = unit * flySpeed
		local alphaVel = clamp01(dt * velocityLerpRate)
		currentVelocity = currentVelocity:Lerp(targetVel, alphaVel)
	else
		local alphaIdle = clamp01(dt * idleSlowdownRate)
		currentVelocity = currentVelocity:Lerp(Vector3.new(), alphaIdle)
	end
	bodyVel.Velocity = currentVelocity

	local lookDir
	if moveMagnitude > 0.05 then
		lookDir = moveDir.Unit
	else
		lookDir = camLook.Unit
	end

	if lookDir.Magnitude < 0.01 then
		lookDir = Vector3.new(0, 0, -1)
	end

	local baseCF = CFrame.lookAt(rootPart.Position, rootPart.Position + lookDir)

	local tiltDeg
	if moveMagnitude > 0.1 then
		tiltDeg = MOVING_TILT_DEG
	else
		tiltDeg = IDLE_TILT_DEG
	end

	if not hasHorizontal and verticalInput < 0 then
		tiltDeg = 90
	elseif not hasHorizontal and verticalInput > 0 then
		tiltDeg = 0
	end

	local targetCF = baseCF * CFrame.Angles(-math.rad(tiltDeg), 0, 0)

	if not currentGyroCFrame then
		currentGyroCFrame = targetCF
	end
	currentGyroCFrame = currentGyroCFrame:Lerp(targetCF, clamp01(dt * rotationLerpRate))
	bodyGyro.CFrame = currentGyroCFrame

	if humanoid and humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		local now = os.clock()
		local shouldFlyAnim = (moveMagnitude > ANIM_TO_FLY_THRESHOLD)
		local shouldFloatAnim = (moveMagnitude < ANIM_TO_FLOAT_THRESHOLD)

		if shouldFlyAnim and animMode ~= "Fly" and (now - lastAnimSwitch) >= ANIM_SWITCH_COOLDOWN then
			animMode = "Fly"
			lastAnimSwitch = now
			playFly()
		elseif shouldFloatAnim and animMode ~= "Float" and (now - lastAnimSwitch) >= ANIM_SWITCH_COOLDOWN then
			animMode = "Float"
			lastAnimSwitch = now
			playFloat()
		end
	end

	if rightShoulder and defaultShoulderC0 and character then
		local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
		if torso then
			local relDir = torso.CFrame:VectorToObjectSpace(camLook)
			local yaw = math.atan2(-relDir.Z, relDir.X)
			local pitch = math.asin(relDir.Y)

			local armCF =
				CFrame.new() *
				CFrame.Angles(0, -math.pi/2, 0) *
				CFrame.Angles(-pitch * 0.9, 0, -yaw * 0.25)

			rightShoulder.C0 = defaultShoulderC0 * armCF
		end
	end
end)

--------------------------------------------------------------------
-- MAIN
--------------------------------------------------------------------
loadSettings()
getCharacter()

for _, plr in ipairs(Players:GetPlayers()) do
	hookPlayerForTags(plr)
end
Players.PlayerAdded:Connect(function(plr)
	hookPlayerForTags(plr)
end)
Players.PlayerRemoving:Connect(function(plr)
	if plr and plr.Character then
		destroyTagGui(plr.Character, "SOS_RoleTag")
		destroyTagGui(plr.Character, "SOS_AKTag")
		destroyTagGui(plr.Character, "SOS_KSKTag")
	end
end)

hookChatListeners()

-- fast initial tags
task.defer(function()
	-- Owners get their role tag instantly
	for _, plr in ipairs(Players:GetPlayers()) do
		if isOwner(plr) then
			refreshAllTagsForPlayer(plr)
		end
	end

	-- Broadcast all three markers on startup for you
	-- SOS marker means you are SOS
	-- AK and KSK are independent markers
	broadcastSosMarker()
	broadcastAkMarker()
	broadcastKskMarker()
end)

createUI()
applyPlayerSpeed()
applyCameraSettings()
reapplyAllOverridesAfterRespawn()

LocalPlayer.CharacterAdded:Connect(function()
	task.wait(0.12)
	getCharacter()

	applyPlayerSpeed()
	applyCameraSettings()
	reapplyAllOverridesAfterRespawn()

	for _, plr in ipairs(Players:GetPlayers()) do
		refreshAllTagsForPlayer(plr)
	end

	if flying then
		stopFlying()
	end
end)

notify("SOS HUD", "Loaded.", 2)
