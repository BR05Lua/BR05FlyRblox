--// SOS HUD (Polished Edition)
--// Single LocalScript (StarterPlayerScripts recommended)
--// Client-only UI + flight + lighting presets + VIP coil + intro

--====================================================
-- Services
--====================================================
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local GuiService = game:GetService("GuiService")
local StarterGui = game:GetService("StarterGui")
local Lighting = game:GetService("Lighting")
local MarketplaceService = game:GetService("MarketplaceService")
local ContentProvider = game:GetService("ContentProvider")

local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

--====================================================
-- Config
--====================================================
local CONFIG = {
	Debug = false,

	Keys = {
		ToggleMenu = Enum.KeyCode.H,
		ToggleFly = Enum.KeyCode.F,
	},

	Intro = {
		Enabled = true,
		IconImage = "rbxassetid://104602392280926",
		StartSound = "rbxassetid://1843492223",
		Title = "SOS HUD",
		Subtitle = "The Sins Of Scripting",
		ShowSeconds = 2.0,
		FadeSeconds = 0.75,
	},

	Audio = {
		ButtonClick = "rbxassetid://111174530730534",
		ButtonClickVolume = 0.65,
	},

	Flight = {
		Speed = 200,
		SpeedMin = 1,
		SpeedMax = 1000,

		VelocityLerpRate = 7.0,
		RotationLerpRate = 7.0,
		IdleSlowdownRate = 2.6,

		TiltMovingDeg = 85,
		TiltIdleDeg = 10,

		-- Q held -> force 90 degrees down
		-- E held -> force 0 degrees (no tilt)
		TiltDownDeg = 90,
		TiltNoneDeg = 0,

		BodyGyro = { P = 1e5, D = 1000, MaxTorque = Vector3.new(1e5, 1e5, 1e5) },
		BodyVel = { P = 1250, MaxForce = Vector3.new(1e5, 1e5, 1e5) },

		Animations = {
			DefaultFloat = "rbxassetid://88138077358201",
			DefaultFly = "rbxassetid://131217573719045",
		},

		AnimSwitch = {
			Cooldown = 0.25,
			ToFlyThreshold = 0.22,
			ToFloatThreshold = 0.12,
			BlendTime = 0.25,
		},
	},

	Player = {
		SpeedMin = 2,
		SpeedMax = 500,
	},

	UI = {
		MenuSize = UDim2.new(0, 520, 0, 360),
		HandleSize = UDim2.new(0, 520, 0, 42),
		MenuStartClosed = true,
		MenuShowDelaySeconds = 2.0,

		MobileFlyPos = UDim2.new(1, -170, 1, -190),
		MobileFlySize = UDim2.new(0, 140, 0, 60),
	},

	DiscordLink = "https://discord.gg/cacg7kvX",

	MicUp = {
		PlaceIds = {
			["6884319169"] = true,
			["15546218972"] = true,
		},
		VipGamepasses = {
			[951459548] = true,
			[28828491] = true,
		},
		Coil = {
			Name = "Better Speed Coil",
			WalkSpeed = 111,
		},
	},
}

local function dprint(...)
	if CONFIG.Debug then
		print("[SOS HUD]", ...)
	end
end

--====================================================
-- Small utilities
--====================================================
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

local function safeDestroy(inst)
	if inst and inst.Parent then
		inst:Destroy()
	end
end

local function toAssetIdString(v)
	local s = tostring(v or ""):gsub("%s+", "")
	if s == "" then return nil end
	if s:find("^rbxassetid://") then return s end
	if s:match("^%d+$") then return "rbxassetid://" .. s end
	return nil
end

--====================================================
-- Maid
--====================================================
local Maid = {}
Maid.__index = Maid
function Maid.new()
	return setmetatable({ _tasks = {} }, Maid)
end
function Maid:Give(taskThing)
	table.insert(self._tasks, taskThing)
	return taskThing
end
function Maid:Cleanup()
	for i = #self._tasks, 1, -1 do
		local t = self._tasks[i]
		self._tasks[i] = nil
		if typeof(t) == "RBXScriptConnection" then
			pcall(function() t:Disconnect() end)
		elseif typeof(t) == "Instance" then
			pcall(function() t:Destroy() end)
		elseif type(t) == "function" then
			pcall(t)
		end
	end
end

--====================================================
-- UI factory
--====================================================
local UI = {}

function UI.Corner(parent, px)
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, px or 12)
	c.Parent = parent
	return c
end

function UI.Stroke(parent, thickness, transparency)
	local s = Instance.new("UIStroke")
	s.Color = Color3.fromRGB(200, 40, 40)
	s.Thickness = thickness or 2
	s.Transparency = transparency or 0.1
	s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	s.Parent = parent
	return s
end

function UI.Glass(frame)
	frame.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
	frame.BackgroundTransparency = 0.18

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
	grad.Parent = frame

	local shine = Instance.new("Frame")
	shine.Name = "Shine"
	shine.BackgroundTransparency = 1
	shine.Size = UDim2.new(1, -8, 0.35, 0)
	shine.Position = UDim2.new(0, 4, 0, 4)
	shine.Parent = frame

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

function UI.Text(parent, txt, size, bold)
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

local function attachButtonClickSound(btn)
	if not btn or not btn:IsA("GuiButton") then return end
	local s = Instance.new("Sound")
	s.Name = "ClickSound"
	s.SoundId = CONFIG.Audio.ButtonClick
	s.Volume = CONFIG.Audio.ButtonClickVolume
	s.Looped = false
	s.Parent = btn

	btn.MouseButton1Down:Connect(function()
		pcall(function() s:Play() end)
	end)
end

function UI.Button(parent, txt)
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
	UI.Corner(b, 10)

	local st = Instance.new("UIStroke")
	st.Color = Color3.fromRGB(200, 40, 40)
	st.Thickness = 1
	st.Transparency = 0.25
	st.Parent = b

	attachButtonClickSound(b)
	return b
end

function UI.Input(parent, placeholder)
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
	UI.Corner(tb, 10)

	local st = Instance.new("UIStroke")
	st.Color = Color3.fromRGB(200, 40, 40)
	st.Thickness = 1
	st.Transparency = 0.35
	st.Parent = tb

	return tb
end

local function setTabActive(btn, active)
	local st = btn:FindFirstChildOfClass("UIStroke")
	if st then
		st.Transparency = active and 0.05 or 0.35
		st.Thickness = active and 2 or 1
	end
	btn.BackgroundTransparency = active and 0.08 or 0.22
end

--====================================================
-- Custom animations
--====================================================
local CustomAnims = {
	Idle = {
		{ Name = "Tall", Id = 91348372558295 },

		{ Name = "Jonathan", Id = 120629563851640 },
		{ Name = "Killer Queen", Id = 104714163485875 },
		{ Name = "Dio", Id = 138467089338692 },
		{ Name = "Dio OH", Id = 96658788627102 },
		{ Name = "Joseph", Id = 87470625500564 },
		{ Name = "Jolyne", Id = 97892708412696 },
		{ Name = "Diego", Id = 127117233320016 },
		{ Name = "Polnareff", Id = 104647713661701 },
		{ Name = "Jotaro", Id = 134878791451155 },
		{ Name = "Funny V", Id = 88859285630202 },
		{ Name = "Johnny", Id = 77834689346843 },
		{ Name = "Made in Heaven", Id = 79234770032233 },
		{ Name = "Mahito", Id = 92585001378279 },
		{ Name = "Honored One", Id = 139000839803032 },
		{ Name = "Gon Rage", Id = 136678571910037 },
		{ Name = "Sol's RNG 1", Id = 125722696765151 },
		{ Name = "Luffy", Id = 107520488394848 },
		{ Name = "Sans", Id = 123627677663418 },
		{ Name = "Fake R6", Id = 96518514398708 },
		{ Name = "Goku Warm Up", Id = 84773442399798 },
		{ Name = "Goku UI/Mui", Id = 130104867308995 },
		{ Name = "Goku Black", Id = 110240143520283 },
		{ Name = "Sukuna", Id = 82974857632552 },
		{ Name = "Toji", Id = 113657065279101 },
		{ Name = "Isagi", Id = 135818607077529 },
		{ Name = "Yuji", Id = 103088653217891 },
		{ Name = "Lavinho", Id = 92045987196732 },
		{ Name = "Ippo", Id = 76110924880592 },
		{ Name = "Aizen", Id = 83896268225208 },
		{ Name = "Kaneki", Id = 116671111363578 },
		{ Name = "Tanjiro", Id = 118533315464114 },
		{ Name = "Head Hold", Id = 129453036635884 },
		{ Name = "Robot Perform", Id = 105174189783870 },

		-- Added Idles (requested)
		{ Name = "Springtrap", Id = 90257184304714 },
		{ Name = "Hmmm Float", Id = 107666091494733 },
		{ Name = "OG Golden Freddy", Id = 138402679058341 },
		{ Name = "Wally West", Id = 106169111259587 },
		{ Name = "𝓛", Id = 103267638009024 },
		{ Name = "Robot Malfunction", Id = 110419039625879 },
	},

	Walk = {
		{ Name = "Football/Soccer", Id = 116881956670910 },
		{ Name = "Naruto", Id = 81851725854678 },
		{ Name = "Animal", Id = 87721497492370 },
		{ Name = "Fredbear", Id = 133284420439423 },
		{ Name = "Cute Anime", Id = 106767496454996 },
	},

	Run = {
		{ Name = "Football/Soccer", Id = 116881956670910 },
		{ Name = "Animal", Id = 87721497492370 },
		{ Name = "Fredbear", Id = 133284420439423 },
		{ Name = "Cute Anime", Id = 106767496454996 },

		{ Name = "Tall", Id = 134010853417610 },
		{ Name = "Officer Earl", Id = 104646820775114 },
		{ Name = "AOT Titan", Id = 95363958550738 },
		{ Name = "Captain JS", Id = 87806542116815 },
		{ Name = "Ninja Sprint", Id = 123763532572423 },
		{ Name = "IDEK", Id = 101293881003047 },
		{ Name = "Honored One", Id = 82260970223217 },
		{ Name = "Head Hold", Id = 92715775326925 },

		-- Robot Speed 3 moved here (requested)
		{ Name = "Robot Speed 3", Id = 128047975332475 },

		-- Added Runs (requested)
		{ Name = "Springtrap Sturdy", Id = 80927378599036 },
		{ Name = "UFO", Id = 118703314621593 },
		{ Name = "Closed Eyes Vibe", Id = 117991470645633 },
		{ Name = "Wally West", Id = 102622695004986 },
		{ Name = "Squidward", Id = 82365330773489 },
		{ Name = "On A Mission", Id = 113718116290824 },
		{ Name = "Very Happy Run", Id = 86522070222739 },
		{ Name = "Missile", Id = 92401041987431 },
		{ Name = "I Wanna Run Away", Id = 78510387198062 },
	},
}

-- Walk slower, run normal rule for Custom picks
local CUSTOM_WALK_SLOW_MULT = 0.65
local CUSTOM_WALK_MIN = 8

--====================================================
-- Flight Controller
--====================================================
local Flight = {}
Flight.__index = Flight

function Flight.new()
	return setmetatable({
		Maid = Maid.new(),
		Character = nil,
		Humanoid = nil,
		Root = nil,

		Flying = false,
		BodyGyro = nil,
		BodyVel = nil,

		MoveInput = Vector3.new(),
		VerticalInput = 0,

		CurrentVel = Vector3.new(),
		CurrentGyroCF = nil,

		RunSoundCache = {},

		Animator = nil,
		FloatTrack = nil,
		FlyTrack = nil,
		AnimMode = "Float",
		LastAnimSwitch = 0,

		FloatId = CONFIG.Flight.Animations.DefaultFloat,
		FlyId = CONFIG.Flight.Animations.DefaultFly,

		RightShoulder = nil,
		DefaultShoulderC0 = nil,
	}, Flight)
end

function Flight:_findRightShoulderMotor(char)
	for _, d in ipairs(char:GetDescendants()) do
		if d:IsA("Motor6D") and d.Name == "Right Shoulder" then
			return d
		end
	end
	return nil
end

function Flight:_cacheAndMuteRunSounds()
	local char = self.Character
	if not char then return end
	for _, desc in ipairs(char:GetDescendants()) do
		if desc:IsA("Sound") then
			local name = string.lower(desc.Name)
			if name:find("run") or name:find("walk") or name:find("footstep") then
				if not self.RunSoundCache[desc] then
					self.RunSoundCache[desc] = { Volume = desc.Volume, Playing = desc.Playing }
				end
				desc.Volume = 0
				desc.Playing = false
			end
		end
	end
end

function Flight:_restoreRunSounds()
	for sound, data in pairs(self.RunSoundCache) do
		if sound and sound.Parent then
			sound.Volume = data.Volume or 0.5
			if data.Playing then
				sound.Playing = true
			end
		end
	end
	self.RunSoundCache = {}
end

function Flight:_loadFlightTracks()
	local hum = self.Humanoid
	if not hum then return end
	if hum.RigType == Enum.HumanoidRigType.R6 then
		self.Animator, self.FloatTrack, self.FlyTrack = nil, nil, nil
		return
	end

	local animator = hum:FindFirstChildOfClass("Animator")
	if not animator then
		animator = Instance.new("Animator")
		animator.Parent = hum
	end
	self.Animator = animator

	if self.FloatTrack then pcall(function() self.FloatTrack:Stop(0) end) end
	if self.FlyTrack then pcall(function() self.FlyTrack:Stop(0) end) end
	self.FloatTrack, self.FlyTrack = nil, nil

	local function loadTrack(animId)
		local a = Instance.new("Animation")
		a.AnimationId = animId
		local ok, tr = pcall(function()
			return animator:LoadAnimation(a)
		end)
		if ok and tr then
			tr.Priority = Enum.AnimationPriority.Action
			tr.Looped = true
			return tr
		end
		return nil
	end

	self.FloatTrack = loadTrack(self.FloatId)
	self.FlyTrack = loadTrack(self.FlyId)

	self.AnimMode = "Float"
	self.LastAnimSwitch = 0
end

function Flight:_playFloat()
	if not self.FloatTrack then return end
	if self.FlyTrack and self.FlyTrack.IsPlaying then
		pcall(function() self.FlyTrack:Stop(CONFIG.Flight.AnimSwitch.BlendTime) end)
	end
	if not self.FloatTrack.IsPlaying then
		pcall(function() self.FloatTrack:Play(CONFIG.Flight.AnimSwitch.BlendTime) end)
	end
end

function Flight:_playFly()
	if not self.FlyTrack then return end
	if self.FloatTrack and self.FloatTrack.IsPlaying then
		pcall(function() self.FloatTrack:Stop(CONFIG.Flight.AnimSwitch.BlendTime) end)
	end
	if not self.FlyTrack.IsPlaying then
		pcall(function() self.FlyTrack:Play(CONFIG.Flight.AnimSwitch.BlendTime) end)
	end
end

function Flight:_stopFlightAnims()
	if self.FloatTrack then pcall(function() self.FloatTrack:Stop(CONFIG.Flight.AnimSwitch.BlendTime) end) end
	if self.FlyTrack then pcall(function() self.FlyTrack:Stop(CONFIG.Flight.AnimSwitch.BlendTime) end) end
end

function Flight:BindCharacter(char)
	self.Character = char
	self.Humanoid = char:WaitForChild("Humanoid")
	self.Root = char:WaitForChild("HumanoidRootPart")
	Camera = workspace.CurrentCamera

	self.RightShoulder = self:_findRightShoulderMotor(char)
	self.DefaultShoulderC0 = self.RightShoulder and self.RightShoulder.C0 or nil

	self.RunSoundCache = {}
	self:_loadFlightTracks()
end

function Flight:Start()
	if self.Flying then return end
	if not self.Humanoid or not self.Root then return end

	self.Flying = true
	self.Humanoid.PlatformStand = true
	self:_cacheAndMuteRunSounds()

	local bg = Instance.new("BodyGyro")
	bg.P = CONFIG.Flight.BodyGyro.P
	bg.D = CONFIG.Flight.BodyGyro.D
	bg.MaxTorque = CONFIG.Flight.BodyGyro.MaxTorque
	bg.CFrame = self.Root.CFrame
	bg.Parent = self.Root
	self.BodyGyro = bg

	local bv = Instance.new("BodyVelocity")
	bv.P = CONFIG.Flight.BodyVel.P
	bv.MaxForce = CONFIG.Flight.BodyVel.MaxForce
	bv.Velocity = Vector3.new()
	bv.Parent = self.Root
	self.BodyVel = bv

	self.CurrentVel = Vector3.new()
	self.CurrentGyroCF = self.Root.CFrame

	self.AnimMode = "Float"
	self.LastAnimSwitch = 0
	self:_playFloat()
end

function Flight:Stop()
	if not self.Flying then return end
	self.Flying = false

	self:_stopFlightAnims()

	if self.BodyGyro then self.BodyGyro:Destroy() self.BodyGyro = nil end
	if self.BodyVel then self.BodyVel:Destroy() self.BodyVel = nil end

	if self.Humanoid then
		self.Humanoid.PlatformStand = false
	end

	if self.RightShoulder and self.DefaultShoulderC0 then
		self.RightShoulder.C0 = self.DefaultShoulderC0
	end

	self:_restoreRunSounds()
end

function Flight:Toggle()
	if self.Flying then
		self:Stop()
	else
		self:Start()
	end
end

function Flight:SetSpeed(newSpeed)
	local s = tonumber(newSpeed)
	if not s then return end
	s = math.clamp(s, CONFIG.Flight.SpeedMin, CONFIG.Flight.SpeedMax)
	CONFIG.Flight.Speed = math.floor(s + 0.5)
end

function Flight:SetFloatAnim(idStr)
	local parsed = toAssetIdString(idStr)
	if not parsed then return false end
	self.FloatId = parsed
	self:_loadFlightTracks()
	if self.Flying then
		self:_stopFlightAnims()
		self:_playFloat()
	end
	return true
end

function Flight:SetFlyAnim(idStr)
	local parsed = toAssetIdString(idStr)
	if not parsed then return false end
	self.FlyId = parsed
	self:_loadFlightTracks()
	if self.Flying then
		self:_stopFlightAnims()
		self:_playFloat()
	end
	return true
end

function Flight:_updateInput()
	local dir = Vector3.new()
	if UserInputService:IsKeyDown(Enum.KeyCode.W) then dir += Vector3.new(0, 0, -1) end
	if UserInputService:IsKeyDown(Enum.KeyCode.S) then dir += Vector3.new(0, 0, 1) end
	if UserInputService:IsKeyDown(Enum.KeyCode.A) then dir += Vector3.new(-1, 0, 0) end
	if UserInputService:IsKeyDown(Enum.KeyCode.D) then dir += Vector3.new(1, 0, 0) end
	self.MoveInput = dir

	local v = 0
	if UserInputService:IsKeyDown(Enum.KeyCode.E) then v += 1 end
	if UserInputService:IsKeyDown(Enum.KeyCode.Q) then v -= 1 end
	self.VerticalInput = v
end

function Flight:Update(dt)
	if not self.Flying then return end
	if not self.Root or not self.BodyGyro or not self.BodyVel or not Camera then return end

	self:_updateInput()

	local camCF = Camera.CFrame
	local camLook = camCF.LookVector
	local camRight = camCF.RightVector

	local moveDir = Vector3.new()
	moveDir += camLook * (-self.MoveInput.Z)
	moveDir += camRight * (self.MoveInput.X)
	moveDir += Vector3.new(0, self.VerticalInput, 0)

	local moveMagnitude = moveDir.Magnitude
	local hasHorizontal = Vector3.new(self.MoveInput.X, 0, self.MoveInput.Z).Magnitude > 0.01

	if moveMagnitude > 0 then
		local targetVel = moveDir.Unit * CONFIG.Flight.Speed
		self.CurrentVel = self.CurrentVel:Lerp(targetVel, clamp01(dt * CONFIG.Flight.VelocityLerpRate))
	else
		self.CurrentVel = self.CurrentVel:Lerp(Vector3.new(), clamp01(dt * CONFIG.Flight.IdleSlowdownRate))
	end
	self.BodyVel.Velocity = self.CurrentVel

	local lookDir = camLook
	if lookDir.Magnitude < 0.01 then lookDir = Vector3.new(0, 0, -1) end
	lookDir = lookDir.Unit

	local baseCF = CFrame.lookAt(self.Root.Position, self.Root.Position + lookDir)

	local tiltDeg
	if self.VerticalInput < 0 then
		tiltDeg = CONFIG.Flight.TiltDownDeg
	elseif self.VerticalInput > 0 then
		tiltDeg = CONFIG.Flight.TiltNoneDeg
	else
		tiltDeg = (moveMagnitude > 0.1 and hasHorizontal) and CONFIG.Flight.TiltMovingDeg or CONFIG.Flight.TiltIdleDeg
	end

	local targetCF = baseCF * CFrame.Angles(-math.rad(tiltDeg), 0, 0)
	self.CurrentGyroCF = (self.CurrentGyroCF or targetCF):Lerp(targetCF, clamp01(dt * CONFIG.Flight.RotationLerpRate))
	self.BodyGyro.CFrame = self.CurrentGyroCF

	if self.Humanoid and self.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		local now = os.clock()
		local shouldFly = (moveMagnitude > CONFIG.Flight.AnimSwitch.ToFlyThreshold) and hasHorizontal
		local shouldFloat = (moveMagnitude < CONFIG.Flight.AnimSwitch.ToFloatThreshold) or (not hasHorizontal)

		if shouldFly and self.AnimMode ~= "Fly" and (now - self.LastAnimSwitch) >= CONFIG.Flight.AnimSwitch.Cooldown then
			self.AnimMode = "Fly"
			self.LastAnimSwitch = now
			self:_playFly()
		elseif shouldFloat and self.AnimMode ~= "Float" and (now - self.LastAnimSwitch) >= CONFIG.Flight.AnimSwitch.Cooldown then
			self.AnimMode = "Float"
			self.LastAnimSwitch = now
			self:_playFloat()
		end
	end

	if self.RightShoulder and self.DefaultShoulderC0 and self.Character then
		local torso = self.Character:FindFirstChild("Torso") or self.Character:FindFirstChild("UpperTorso")
		if torso then
			local relDir = torso.CFrame:VectorToObjectSpace(camLook)
			local yaw = math.atan2(-relDir.Z, relDir.X)
			local pitch = math.asin(relDir.Y)

			local armCF =
				CFrame.new()
				* CFrame.Angles(0, -math.pi / 2, 0)
				* CFrame.Angles(-pitch * 0.9, 0, -yaw * 0.25)

			self.RightShoulder.C0 = self.DefaultShoulderC0 * armCF
		end
	end
end

--====================================================
-- Lighting Controller
--====================================================
local LightingCtl = {}
LightingCtl.__index = LightingCtl

function LightingCtl.new()
	return setmetatable({
		Captured = false,
		Original = { Props = {}, Sky = nil },
		ActivePreset = "None",
	}, LightingCtl)
end

function LightingCtl:_captureOnce()
	if self.Captured then return end
	self.Captured = true

	self.Original.Props.Brightness = Lighting.Brightness
	self.Original.Props.ClockTime = Lighting.ClockTime
	self.Original.Props.Ambient = Lighting.Ambient
	self.Original.Props.OutdoorAmbient = Lighting.OutdoorAmbient
	self.Original.Props.EnvironmentDiffuseScale = Lighting.EnvironmentDiffuseScale
	self.Original.Props.EnvironmentSpecularScale = Lighting.EnvironmentSpecularScale
	self.Original.Props.ExposureCompensation = Lighting.ExposureCompensation

	local sky = Lighting:FindFirstChildOfClass("Sky")
	if sky then
		self.Original.Sky = sky:Clone()
	end
end

function LightingCtl:_getOrCreate(className, name)
	local eff = Lighting:FindFirstChild(name)
	if eff and eff.ClassName ~= className then
		eff:Destroy()
		eff = nil
	end
	if not eff then
		eff = Instance.new(className)
		eff.Name = name
		eff.Parent = Lighting
	end
	return eff
end

function LightingCtl:_destroy(name)
	local eff = Lighting:FindFirstChild(name)
	if eff then eff:Destroy() end
end

function LightingCtl:IsEffectOn(name)
	return Lighting:FindFirstChild(name) ~= nil
end

local SKYBOX = {
	["Red Galaxy"] = { SkyboxBk=nil,SkyboxDn=nil,SkyboxFt=nil,SkyboxLf=nil,SkyboxRt=nil,SkyboxUp=nil },
	["Deep Galaxy"] = { SkyboxBk=nil,SkyboxDn=nil,SkyboxFt=nil,SkyboxLf=nil,SkyboxRt=nil,SkyboxUp=nil },
	["Anime Clouds"] = { SkyboxBk=nil,SkyboxDn=nil,SkyboxFt=nil,SkyboxLf=nil,SkyboxRt=nil,SkyboxUp=nil },
	["Vibrant Clouds"] = { SkyboxBk=nil,SkyboxDn=nil,SkyboxFt=nil,SkyboxLf=nil,SkyboxRt=nil,SkyboxUp=nil },
	["Blocky Sky"] = { SkyboxBk=nil,SkyboxDn=nil,SkyboxFt=nil,SkyboxLf=nil,SkyboxRt=nil,SkyboxUp=nil },
}

local PRESETS = {
	["Red Galaxy"] = {
		Lighting = {
			Brightness = 2.2, ClockTime = 0.2,
			Ambient = Color3.fromRGB(35, 10, 10),
			OutdoorAmbient = Color3.fromRGB(55, 20, 20),
			ExposureCompensation = 0.25,
			EnvironmentDiffuseScale = 1, EnvironmentSpecularScale = 1,
		},
		Effects = {
			Bloom = { Intensity = 1.1, Size = 28, Threshold = 0.85 },
			ColorCorrection = { Brightness = 0.04, Contrast = 0.18, Saturation = 0.35, TintColor = Color3.fromRGB(255, 110, 110) },
			Atmosphere = { Density = 0.28, Offset = 0.2, Color = Color3.fromRGB(150, 70, 70), Decay = Color3.fromRGB(50, 15, 15), Glare = 0.28, Haze = 1.8 },
			SunRays = { Intensity = 0.05, Spread = 0.7 },
			DepthOfField = { FarIntensity = 0.25, FocusDistance = 22, InFocusRadius = 18, NearIntensity = 0.12 },
			MotionBlur = { Intensity = 0.22 },
		},
	},
	["Deep Galaxy"] = {
		Lighting = {
			Brightness = 2.0, ClockTime = 23.6,
			Ambient = Color3.fromRGB(10, 10, 28),
			OutdoorAmbient = Color3.fromRGB(20, 20, 55),
			ExposureCompensation = 0.15,
			EnvironmentDiffuseScale = 1, EnvironmentSpecularScale = 1,
		},
		Effects = {
			Bloom = { Intensity = 0.85, Size = 24, Threshold = 0.9 },
			ColorCorrection = { Brightness = 0.02, Contrast = 0.12, Saturation = 0.18, TintColor = Color3.fromRGB(200, 220, 255) },
			Atmosphere = { Density = 0.18, Offset = 0.1, Color = Color3.fromRGB(90, 110, 160), Decay = Color3.fromRGB(20, 25, 40), Glare = 0.18, Haze = 1.2 },
			SunRays = { Intensity = 0.03, Spread = 0.55 },
			DepthOfField = { FarIntensity = 0.22, FocusDistance = 28, InFocusRadius = 22, NearIntensity = 0.10 },
			MotionBlur = { Intensity = 0.14 },
		},
	},
	["Anime Clouds"] = {
		Lighting = {
			Brightness = 2.8, ClockTime = 14.0,
			Ambient = Color3.fromRGB(120, 130, 160),
			OutdoorAmbient = Color3.fromRGB(150, 170, 200),
			ExposureCompensation = 0.35,
			EnvironmentDiffuseScale = 1, EnvironmentSpecularScale = 1,
		},
		Effects = {
			Bloom = { Intensity = 0.6, Size = 18, Threshold = 0.92 },
			ColorCorrection = { Brightness = 0.06, Contrast = 0.08, Saturation = 0.25, TintColor = Color3.fromRGB(255, 245, 255) },
			Atmosphere = { Density = 0.35, Offset = 0.05, Color = Color3.fromRGB(205, 220, 255), Decay = Color3.fromRGB(130, 160, 200), Glare = 0.08, Haze = 1.9 },
			SunRays = { Intensity = 0.08, Spread = 0.85 },
			DepthOfField = { FarIntensity = 0.12, FocusDistance = 45, InFocusRadius = 45, NearIntensity = 0.05 },
			MotionBlur = { Intensity = 0.08 },
		},
	},
	["Vibrant Clouds"] = {
		Lighting = {
			Brightness = 3.1, ClockTime = 16.2,
			Ambient = Color3.fromRGB(150, 160, 170),
			OutdoorAmbient = Color3.fromRGB(180, 190, 205),
			ExposureCompensation = 0.45,
			EnvironmentDiffuseScale = 1, EnvironmentSpecularScale = 1,
		},
		Effects = {
			Bloom = { Intensity = 0.75, Size = 20, Threshold = 0.9 },
			ColorCorrection = { Brightness = 0.05, Contrast = 0.10, Saturation = 0.30, TintColor = Color3.fromRGB(255, 255, 255) },
			Atmosphere = { Density = 0.22, Offset = 0.0, Color = Color3.fromRGB(220, 230, 255), Decay = Color3.fromRGB(160, 190, 210), Glare = 0.10, Haze = 1.4 },
			SunRays = { Intensity = 0.10, Spread = 1.0 },
			DepthOfField = { FarIntensity = 0.10, FocusDistance = 60, InFocusRadius = 70, NearIntensity = 0.04 },
			MotionBlur = { Intensity = 0.06 },
		},
	},
	["Blocky Sky"] = {
		Lighting = {
			Brightness = 2.4, ClockTime = 12.0,
			Ambient = Color3.fromRGB(105, 105, 105),
			OutdoorAmbient = Color3.fromRGB(135, 135, 135),
			ExposureCompensation = 0.10,
			EnvironmentDiffuseScale = 1, EnvironmentSpecularScale = 1,
		},
		Effects = {
			Bloom = { Intensity = 0.35, Size = 14, Threshold = 0.95 },
			ColorCorrection = { Brightness = 0.01, Contrast = 0.06, Saturation = 0.12, TintColor = Color3.fromRGB(245, 245, 245) },
			Atmosphere = { Density = 0.08, Offset = 0.0, Color = Color3.fromRGB(220, 220, 220), Decay = Color3.fromRGB(160, 160, 160), Glare = 0.04, Haze = 0.8 },
			SunRays = { Intensity = 0.02, Spread = 0.35 },
			DepthOfField = { FarIntensity = 0.06, FocusDistance = 90, InFocusRadius = 90, NearIntensity = 0.02 },
			MotionBlur = { Intensity = 0.04 },
		},
	},
}

function LightingCtl:_applyLightingProps(presetName)
	local preset = PRESETS[presetName]
	if not preset then return end
	local p = preset.Lighting
	Lighting.Brightness = p.Brightness
	Lighting.ClockTime = p.ClockTime
	Lighting.Ambient = p.Ambient
	Lighting.OutdoorAmbient = p.OutdoorAmbient
	Lighting.ExposureCompensation = p.ExposureCompensation
	Lighting.EnvironmentDiffuseScale = p.EnvironmentDiffuseScale
	Lighting.EnvironmentSpecularScale = p.EnvironmentSpecularScale
end

function LightingCtl:_applySkybox(presetName)
	local data = SKYBOX[presetName]
	if not data then return end

	local existing = Lighting:FindFirstChild("SOS_Sky")
	if existing and existing:IsA("Sky") then
		existing:Destroy()
	end

	local sky = Instance.new("Sky")
	sky.Name = "SOS_Sky"
	for k, v in pairs(data) do
		if v and typeof(v) == "string" then
			pcall(function() sky[k] = v end)
		end
	end
	sky.Parent = Lighting
end

function LightingCtl:_applyPresetEffectSettingsToExisting(presetName)
	local preset = PRESETS[presetName]
	if not preset then return end
	local e = preset.Effects

	local bloom = Lighting:FindFirstChild("SOS_Bloom")
	if bloom and bloom:IsA("BloomEffect") then
		bloom.Intensity = e.Bloom.Intensity
		bloom.Size = e.Bloom.Size
		bloom.Threshold = e.Bloom.Threshold
	end

	local cc = Lighting:FindFirstChild("SOS_ColorCorrection")
	if cc and cc:IsA("ColorCorrectionEffect") then
		cc.Brightness = e.ColorCorrection.Brightness
		cc.Contrast = e.ColorCorrection.Contrast
		cc.Saturation = e.ColorCorrection.Saturation
		cc.TintColor = e.ColorCorrection.TintColor
	end

	local at = Lighting:FindFirstChild("SOS_Atmosphere")
	if at and at:IsA("Atmosphere") then
		at.Density = e.Atmosphere.Density
		at.Offset = e.Atmosphere.Offset
		at.Color = e.Atmosphere.Color
		at.Decay = e.Atmosphere.Decay
		at.Glare = e.Atmosphere.Glare
		at.Haze = e.Atmosphere.Haze
	end

	local sr = Lighting:FindFirstChild("SOS_SunRays")
	if sr and sr:IsA("SunRaysEffect") then
		sr.Intensity = e.SunRays.Intensity
		sr.Spread = e.SunRays.Spread
	end

	local dof = Lighting:FindFirstChild("SOS_DepthOfField")
	if dof and dof:IsA("DepthOfFieldEffect") then
		dof.FarIntensity = e.DepthOfField.FarIntensity
		dof.FocusDistance = e.DepthOfField.FocusDistance
		dof.InFocusRadius = e.DepthOfField.InFocusRadius
		dof.NearIntensity = e.DepthOfField.NearIntensity
	end

	local mb = Lighting:FindFirstChild("SOS_MotionBlur")
	if mb and mb:IsA("BlurEffect") then
		mb.Size = math.floor(24 * e.MotionBlur.Intensity + 0.5)
	end
end

function LightingCtl:SetPreset(name)
	if not PRESETS[name] then return false end
	self:_captureOnce()

	self.ActivePreset = name
	self:_applyLightingProps(name)
	self:_applySkybox(name)
	self:_applyPresetEffectSettingsToExisting(name)
	return true
end

function LightingCtl:ToggleEffect(effectKey, on)
	self:_captureOnce()
	local preset = PRESETS[self.ActivePreset] or PRESETS["Deep Galaxy"]
	local e = preset.Effects

	if effectKey == "Bloom" then
		if on then
			local bloom = self:_getOrCreate("BloomEffect", "SOS_Bloom")
			bloom.Intensity, bloom.Size, bloom.Threshold = e.Bloom.Intensity, e.Bloom.Size, e.Bloom.Threshold
		else
			self:_destroy("SOS_Bloom")
		end
	elseif effectKey == "ColorCorrection" then
		if on then
			local cc = self:_getOrCreate("ColorCorrectionEffect", "SOS_ColorCorrection")
			cc.Brightness = e.ColorCorrection.Brightness
			cc.Contrast = e.ColorCorrection.Contrast
			cc.Saturation = e.ColorCorrection.Saturation
			cc.TintColor = e.ColorCorrection.TintColor
		else
			self:_destroy("SOS_ColorCorrection")
		end
	elseif effectKey == "Atmosphere" then
		if on then
			local at = self:_getOrCreate("Atmosphere", "SOS_Atmosphere")
			at.Density = e.Atmosphere.Density
			at.Offset = e.Atmosphere.Offset
			at.Color = e.Atmosphere.Color
			at.Decay = e.Atmosphere.Decay
			at.Glare = e.Atmosphere.Glare
			at.Haze = e.Atmosphere.Haze
		else
			self:_destroy("SOS_Atmosphere")
		end
	elseif effectKey == "SunRays" then
		if on then
			local sr = self:_getOrCreate("SunRaysEffect", "SOS_SunRays")
			sr.Intensity = e.SunRays.Intensity
			sr.Spread = e.SunRays.Spread
		else
			self:_destroy("SOS_SunRays")
		end
	elseif effectKey == "DepthOfField" then
		if on then
			local dof = self:_getOrCreate("DepthOfFieldEffect", "SOS_DepthOfField")
			dof.FarIntensity = e.DepthOfField.FarIntensity
			dof.FocusDistance = e.DepthOfField.FocusDistance
			dof.InFocusRadius = e.DepthOfField.InFocusRadius
			dof.NearIntensity = e.DepthOfField.NearIntensity
		else
			self:_destroy("SOS_DepthOfField")
		end
	elseif effectKey == "MotionBlur" then
		if on then
			local mb = self:_getOrCreate("BlurEffect", "SOS_MotionBlur")
			mb.Size = math.floor(24 * e.MotionBlur.Intensity + 0.5)
		else
			self:_destroy("SOS_MotionBlur")
		end
	end
end

function LightingCtl:Reset()
	if not self.Captured then return end

	self:_destroy("SOS_Bloom")
	self:_destroy("SOS_ColorCorrection")
	self:_destroy("SOS_Atmosphere")
	self:_destroy("SOS_SunRays")
	self:_destroy("SOS_DepthOfField")
	self:_destroy("SOS_MotionBlur")

	local existingSky = Lighting:FindFirstChild("SOS_Sky")
	if existingSky then existingSky:Destroy() end

	local p = self.Original.Props
	Lighting.Brightness = p.Brightness
	Lighting.ClockTime = p.ClockTime
	Lighting.Ambient = p.Ambient
	Lighting.OutdoorAmbient = p.OutdoorAmbient
	Lighting.EnvironmentDiffuseScale = p.EnvironmentDiffuseScale
	Lighting.EnvironmentSpecularScale = p.EnvironmentSpecularScale
	Lighting.ExposureCompensation = p.ExposureCompensation

	self.ActivePreset = "None"
end

--====================================================
-- VIP Coil
--====================================================
local function userHasVip()
	for passId in pairs(CONFIG.MicUp.VipGamepasses) do
		local ok, owns = pcall(function()
			return MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, passId)
		end)
		if ok and owns then
			return true
		end
	end
	return false
end

local function giveBetterSpeedCoil()
	local char = LocalPlayer.Character
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	if not char or not hum then return end

	if not userHasVip() then
		notify("VIP", "You need VIP first.", 3)
		return
	end

	local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
	if backpack and backpack:FindFirstChild(CONFIG.MicUp.Coil.Name) then
		notify("VIP", "You already have the Better Speed Coil.", 2)
		return
	end

	local tool = Instance.new("Tool")
	tool.Name = CONFIG.MicUp.Coil.Name
	tool.RequiresHandle = false
	tool.CanBeDropped = false

	local oldSpeed
	tool.Equipped:Connect(function()
		if hum and hum.Parent then
			oldSpeed = hum.WalkSpeed
			hum.WalkSpeed = CONFIG.MicUp.Coil.WalkSpeed
			for _, tr in ipairs(hum:GetPlayingAnimationTracks()) do
				pcall(function()
					if tr.Priority == Enum.AnimationPriority.Action then
						tr:Stop(0)
					end
				end)
			end
		end
	end)

	tool.Unequipped:Connect(function()
		if hum and hum.Parent then
			if oldSpeed then hum.WalkSpeed = oldSpeed end
			oldSpeed = nil
		end
	end)

	tool.Parent = backpack or LocalPlayer:WaitForChild("Backpack")
	notify("VIP", "Better Speed Coil added.", 2)
end

--====================================================
-- Intro
--====================================================
local function playIntro(gui)
	if not CONFIG.Intro.Enabled then return end
	if not gui then return end

	local rng = Random.new()

	local overlay = Instance.new("Frame")
	overlay.Name = "SOS_Intro"
	overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	overlay.BackgroundTransparency = 0.25
	overlay.BorderSizePixel = 0
	overlay.Size = UDim2.new(1, 0, 1, 0)
	overlay.ZIndex = 999
	overlay.Parent = gui

	local flash = Instance.new("Frame")
	flash.BackgroundColor3 = Color3.fromRGB(220, 0, 0)
	flash.BackgroundTransparency = 1
	flash.BorderSizePixel = 0
	flash.Size = UDim2.new(1, 0, 1, 0)
	flash.ZIndex = 1000
	flash.Parent = overlay

	local card = Instance.new("Frame")
	card.AnchorPoint = Vector2.new(0.5, 0.5)
	card.Position = UDim2.new(0.5, 0, 0.46, 0)
	card.Size = UDim2.new(0, 440, 0, 280)
	card.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
	card.BackgroundTransparency = 0.10
	card.BorderSizePixel = 0
	card.ZIndex = 1001
	card.Parent = overlay
	UI.Corner(card, 18)

	local stroke = Instance.new("UIStroke")
	stroke.Color = Color3.fromRGB(255, 40, 40)
	stroke.Thickness = 2
	stroke.Transparency = 0.08
	stroke.Parent = card

	local rune = Instance.new("ImageLabel")
	rune.BackgroundTransparency = 1
	rune.AnchorPoint = Vector2.new(0.5, 0.5)
	rune.Position = UDim2.new(0.5, 0, 0.44, 0)
	rune.Size = UDim2.new(0, 250, 0, 250)
	rune.Image = "rbxassetid://6235763214"
	rune.ImageTransparency = 0.55
	rune.ZIndex = 1002
	rune.Parent = card

	local glow = Instance.new("ImageLabel")
	glow.BackgroundTransparency = 1
	glow.AnchorPoint = Vector2.new(0.5, 0.5)
	glow.Position = rune.Position
	glow.Size = UDim2.new(0, 300, 0, 300)
	glow.Image = "rbxassetid://5028857084"
	glow.ImageTransparency = 0.62
	glow.ZIndex = 1002
	glow.Parent = card

	local icon = Instance.new("ImageLabel")
	icon.BackgroundTransparency = 1
	icon.AnchorPoint = Vector2.new(0.5, 0.5)
	icon.Position = UDim2.new(0.5, 0, 0.44, 0)
	icon.Size = UDim2.new(0, 160, 0, 160)
	icon.Image = CONFIG.Intro.IconImage
	icon.ScaleType = Enum.ScaleType.Fit
	icon.ZIndex = 1003
	icon.Parent = card

	local iconRed = Instance.new("ImageLabel")
	iconRed.BackgroundTransparency = 1
	iconRed.AnchorPoint = Vector2.new(0.5, 0.5)
	iconRed.Position = icon.Position
	iconRed.Size = icon.Size
	iconRed.Image = CONFIG.Intro.IconImage
	iconRed.ImageColor3 = Color3.fromRGB(255, 40, 40)
	iconRed.ImageTransparency = 0.65
	iconRed.ScaleType = Enum.ScaleType.Fit
	iconRed.ZIndex = 1002
	iconRed.Parent = card

	local iconDark = Instance.new("ImageLabel")
	iconDark.BackgroundTransparency = 1
	iconDark.AnchorPoint = Vector2.new(0.5, 0.5)
	iconDark.Position = icon.Position
	iconDark.Size = icon.Size
	iconDark.Image = CONFIG.Intro.IconImage
	iconDark.ImageColor3 = Color3.fromRGB(0, 0, 0)
	iconDark.ImageTransparency = 0.75
	iconDark.ScaleType = Enum.ScaleType.Fit
	iconDark.ZIndex = 1002
	iconDark.Parent = card

	local title = Instance.new("TextLabel")
	title.BackgroundTransparency = 1
	title.AnchorPoint = Vector2.new(0.5, 0)
	title.Position = UDim2.new(0.5, 0, 0.72, 0)
	title.Size = UDim2.new(1, -40, 0, 40)
	title.Font = Enum.Font.GothamBlack
	title.TextSize = 36
	title.Text = CONFIG.Intro.Title
	title.TextColor3 = Color3.fromRGB(255, 245, 245)
	title.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
	title.TextStrokeTransparency = 0.45
	title.ZIndex = 1003
	title.Parent = card
	title.TextXAlignment = Enum.TextXAlignment.Center

	local sub = Instance.new("TextLabel")
	sub.BackgroundTransparency = 1
	sub.AnchorPoint = Vector2.new(0.5, 0)
	sub.Position = UDim2.new(0.5, 0, 0.87, 0)
	sub.Size = UDim2.new(1, -40, 0, 26)
	sub.Font = Enum.Font.GothamBold
	sub.TextSize = 14
	sub.Text = CONFIG.Intro.Subtitle
	sub.TextColor3 = Color3.fromRGB(220, 220, 220)
	sub.ZIndex = 1003
	sub.Parent = card
	sub.TextXAlignment = Enum.TextXAlignment.Center

	local scale = Instance.new("UIScale")
	scale.Scale = 0.82
	scale.Parent = card

	local snd = Instance.new("Sound")
	snd.SoundId = CONFIG.Intro.StartSound
	snd.Volume = 0.9
	snd.Looped = false
	snd.Parent = overlay

	pcall(function()
		ContentProvider:PreloadAsync({icon, iconRed, iconDark, rune, glow, snd})
	end)

	pcall(function() snd:Play() end)

	icon.ImageTransparency = 1
	title.TextTransparency = 1
	sub.TextTransparency = 1
	rune.ImageTransparency = 1
	glow.ImageTransparency = 1

	TweenService:Create(scale, TweenInfo.new(0.34, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play()
	TweenService:Create(icon, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0 }):Play()
	TweenService:Create(title, TweenInfo.new(0.26, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
	TweenService:Create(sub, TweenInfo.new(0.28, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 }):Play()
	TweenService:Create(rune, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0.55 }):Play()
	TweenService:Create(glow, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0.62 }):Play()

	task.spawn(function()
		for _ = 1, 2 do
			if not overlay.Parent then return end
			flash.BackgroundTransparency = 0.35
			task.wait(0.05)
			flash.BackgroundTransparency = 1
			task.wait(0.07)
		end
	end)

	local basePos = card.Position
	local baseIconPos = icon.Position
	local baseRuneRot = rune.Rotation
	local t0 = os.clock()

	local glitchConn
	glitchConn = RunService.RenderStepped:Connect(function(dt)
		if not overlay.Parent then
			pcall(function() glitchConn:Disconnect() end)
			return
		end

		local t = os.clock() - t0
		local intensity = 1 - clamp01(t / (CONFIG.Intro.ShowSeconds + 0.25))
		local shake = 10 * intensity

		if rng:NextNumber() < (0.25 + 0.35 * intensity) then
			local ox = rng:NextNumber(-shake, shake)
			local oy = rng:NextNumber(-shake, shake)
			card.Position = UDim2.new(basePos.X.Scale, basePos.X.Offset + ox, basePos.Y.Scale, basePos.Y.Offset + oy)
		else
			card.Position = card.Position:Lerp(basePos, clamp01(dt * 12))
		end

		rune.Rotation = baseRuneRot + (t * (60 + 120 * intensity)) + (rng:NextNumber(-6, 6) * intensity)

		local kick = (rng:NextNumber() < (0.20 + 0.35 * intensity))
		if kick then
			local ix = rng:NextNumber(-8, 8) * intensity
			local iy = rng:NextNumber(-6, 6) * intensity
			iconRed.Position = UDim2.new(baseIconPos.X.Scale, baseIconPos.X.Offset + ix, baseIconPos.Y.Scale, baseIconPos.Y.Offset + iy)
			iconDark.Position = UDim2.new(baseIconPos.X.Scale, baseIconPos.X.Offset - ix, baseIconPos.Y.Scale, baseIconPos.Y.Offset - iy)
			iconRed.ImageTransparency = 0.45 + 0.25 * (1 - intensity)
			iconDark.ImageTransparency = 0.55 + 0.25 * (1 - intensity)
		else
			iconRed.Position = iconRed.Position:Lerp(baseIconPos, clamp01(dt * 20))
			iconDark.Position = iconDark.Position:Lerp(baseIconPos, clamp01(dt * 20))
		end

		if rng:NextNumber() < (0.12 + 0.18 * intensity) then
			title.Position = UDim2.new(0.5, rng:NextInteger(-6, 6), 0.72, rng:NextInteger(-3, 3))
		else
			title.Position = title.Position:Lerp(UDim2.new(0.5, 0, 0.72, 0), clamp01(dt * 12))
		end
	end)

	task.delay(CONFIG.Intro.ShowSeconds, function()
		if glitchConn then pcall(function() glitchConn:Disconnect() end) end
		if not overlay.Parent then return end

		local fade = TweenInfo.new(CONFIG.Intro.FadeSeconds, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		TweenService:Create(overlay, fade, { BackgroundTransparency = 1 }):Play()
		TweenService:Create(card, fade, { BackgroundTransparency = 1 }):Play()
		TweenService:Create(stroke, fade, { Transparency = 1 }):Play()
		TweenService:Create(rune, fade, { ImageTransparency = 1 }):Play()
		TweenService:Create(glow, fade, { ImageTransparency = 1 }):Play()
		TweenService:Create(icon, fade, { ImageTransparency = 1 }):Play()
		TweenService:Create(iconRed, fade, { ImageTransparency = 1 }):Play()
		TweenService:Create(iconDark, fade, { ImageTransparency = 1 }):Play()
		TweenService:Create(title, fade, { TextTransparency = 1 }):Play()
		TweenService:Create(sub, fade, { TextTransparency = 1 }):Play()

		task.delay(CONFIG.Intro.FadeSeconds + 0.05, function()
			safeDestroy(overlay)
		end)
	end)
end

--====================================================
-- Anim Packs (data + apply)
--====================================================
local AnimationPacks = {
	Vampire = { Idle1=1083445855, Idle2=1083450166, Walk=1083473930, Run=1083462077, Jump=1083455352, Climb=1083439238, Fall=1083443587 },
	Hero = { Idle1=616111295, Idle2=616113536, Walk=616122287, Run=616117076, Jump=616115533, Climb=616104706, Fall=616108001 },
	ZombieClassic = { Idle1=616158929, Idle2=616160636, Walk=616168032, Run=616163682, Jump=616161997, Climb=616156119, Fall=616157476 },
	Mage = { Idle1=707742142, Idle2=707855907, Walk=707897309, Run=707861613, Jump=707853694, Climb=707826056, Fall=707829716 },
	Ghost = { Idle1=616006778, Idle2=616008087, Walk=616010382, Run=616013216, Jump=616008936, Climb=616003713, Fall=616005863 },
	Elder = { Idle1=845397899, Idle2=845400520, Walk=845403856, Run=845386501, Jump=845398858, Climb=845392038, Fall=845396048 },
	Levitation = { Idle1=616006778, Idle2=616008087, Walk=616013216, Run=616010382, Jump=616008936, Climb=616003713, Fall=616005863 },
	Astronaut = { Idle1=891621366, Idle2=891633237, Walk=891667138, Run=891636393, Jump=891627522, Climb=891609353, Fall=891617961 },
	Ninja = { Idle1=656117400, Idle2=656118341, Walk=656121766, Run=656118852, Jump=656117878, Climb=656114359, Fall=656115606 },
	Werewolf = { Idle1=1083195517, Idle2=1083214717, Walk=1083178339, Run=1083216690, Jump=1083218792, Climb=1083182000, Fall=1083189019 },
	Cartoon = { Idle1=742637544, Idle2=742638445, Walk=742640026, Run=742638842, Jump=742637942, Climb=742636889, Fall=742637151 },
	Pirate = { Idle1=750781874, Idle2=750782770, Walk=750785693, Run=750783738, Jump=750782230, Climb=750779899, Fall=750780242 },
	Sneaky = { Idle1=1132473842, Idle2=1132477671, Walk=1132510133, Run=1132494274, Jump=1132489853, Climb=1132461372, Fall=1132469004 },
	Toy = { Idle1=782841498, Idle2=782845736, Walk=782843345, Run=782842708, Jump=782847020, Climb=782843869, Fall=782846423 },
	Knight = { Idle1=657595757, Idle2=657568135, Walk=657552124, Run=657564596, Jump=658409194, Climb=658360781, Fall=657600338 },
	Confident = { Idle1=1069977950, Idle2=1069987858, Walk=1070017263, Run=1070001516, Jump=1069984524, Climb=1069946257, Fall=1069973677 },
	Popstar = { Idle1=1212900985, Idle2=1212900985, Walk=1212980338, Run=1212980348, Jump=1212954642, Climb=1213044953, Fall=1212900995 },
	Princess = { Idle1=941003647, Idle2=941013098, Walk=941028902, Run=941015281, Jump=941008832, Climb=940996062, Fall=941000007 },
	Cowboy = { Idle1=1014390418, Idle2=1014398616, Walk=1014421541, Run=1014401683, Jump=1014394726, Climb=1014380606, Fall=1014384571 },
	Patrol = { Idle1=1149612882, Idle2=1150842221, Walk=1151231493, Run=1150967949, Jump=1150944216, Climb=1148811837, Fall=1148863382 },
	ZombieFE = { Idle1=3489171152, Idle2=3489171152, Walk=3489174223, Run=3489173414, Jump=616161997, Climb=616156119, Fall=616157476 },
}

local UnreleasedNames = { "Cowboy","Princess","ZombieFE","Confident","Ghost","Patrol","Popstar","Sneaky" }
local function isInUnreleased(name)
	for _, n in ipairs(UnreleasedNames) do
		if n == name then return true end
	end
	return false
end

local function listPackNames(category)
	local names = {}
	for name in pairs(AnimationPacks) do
		if category == "Unreleased" then
			if isInUnreleased(name) then table.insert(names, name) end
		else
			if not isInUnreleased(name) then table.insert(names, name) end
		end
	end
	table.sort(names)
	return names
end

local function getPackIdForState(packName, stateName)
	local pack = AnimationPacks[packName]
	if not pack then return nil end
	if stateName == "Idle" then
		return pack.Idle1 or pack.Idle2
	elseif stateName == "Walk" then
		return pack.Walk
	elseif stateName == "Run" then
		return pack.Run
	elseif stateName == "Jump" then
		return pack.Jump
	elseif stateName == "Climb" then
		return pack.Climb
	elseif stateName == "Fall" then
		return pack.Fall
	end
	return nil
end

local StateOverrides = { Idle=nil, Walk=nil, Run=nil, Jump=nil, Climb=nil, Fall=nil, Swim=nil }

local function stopAllTracks(hum)
	for _, tr in ipairs(hum:GetPlayingAnimationTracks()) do
		pcall(function() tr:Stop(0) end)
	end
end

local function applyStateOverride(character, humanoid, stateName, assetId)
	local animate = character and character:FindFirstChild("Animate")
	if not animate or not humanoid then
		return false, "Animate script missing."
	end

	local idStr = toAssetIdString(assetId)
	if not idStr then
		return false, "Invalid asset id."
	end

	animate.Disabled = true
	stopAllTracks(humanoid)

	local function setAnimValue(folderName, childName, value)
		local f = animate:FindFirstChild(folderName)
		if not f then return end
		local a = f:FindFirstChild(childName)
		if a and a:IsA("Animation") then
			a.AnimationId = value
		end
	end

	if stateName == "Idle" then
		setAnimValue("idle", "Animation1", idStr)
		setAnimValue("idle", "Animation2", idStr)
	elseif stateName == "Walk" then
		setAnimValue("walk", "WalkAnim", idStr)
	elseif stateName == "Run" then
		setAnimValue("run", "RunAnim", idStr)
	elseif stateName == "Jump" then
		setAnimValue("jump", "JumpAnim", idStr)
	elseif stateName == "Climb" then
		setAnimValue("climb", "ClimbAnim", idStr)
	elseif stateName == "Fall" then
		setAnimValue("fall", "FallAnim", idStr)
	end

	animate.Disabled = false
	pcall(function()
		humanoid:ChangeState(Enum.HumanoidStateType.Running)
	end)

	return true
end

--====================================================
-- App (UI + loops)
--====================================================
local App = {}
App.__index = App

function App.new()
	return setmetatable({
		Maid = Maid.new(),
		GUI = nil,

		MenuHandle = nil,
		MenuFrame = nil,
		ArrowBtn = nil,

		TabsBar = nil,
		PagesHolder = nil,
		Pages = {},
		TabButtons = {},
		ActivePage = "Info",

		FpsLabel = nil,
		FpsAcc = 0,
		FpsFrames = 0,
		FpsValue = 60,
		RainbowHue = 0,

		MenuOpen = false,
		ToggleMenuFn = nil,

		-- Robust menu animation state
		MenuOpenPos = nil,
		MenuClosedPos = nil,
		_MenuTween = nil,
		_MenuAnimToken = 0,

		Flight = Flight.new(),
		Lighting = LightingCtl.new(),

		OriginalWalkSpeed = nil,
		PlayerSpeed = nil,
	}, App)
end

function App:_makePage(name)
	local p = Instance.new("Frame")
	p.Name = name
	p.BackgroundTransparency = 1
	p.Size = UDim2.new(1, 0, 1, 0)
	p.Visible = false
	p.Parent = self.PagesHolder

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

	self.Pages[name] = { Page = p, Scroll = scroll }
	return p, scroll
end

function App:_switchPage(name)
	if name == self.ActivePage then return end
	local newPg = self.Pages[name]
	local oldPg = self.Pages[self.ActivePage]
	if not newPg then return end

	for tabName, btn in pairs(self.TabButtons) do
		setTabActive(btn, tabName == name)
	end

	local newFrame = newPg.Page
	local oldFrame = oldPg and oldPg.Page or nil

	newFrame.Visible = true
	newFrame.Position = UDim2.new(0, 26, 0, 0)
	TweenService:Create(newFrame, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Position = UDim2.new(0, 0, 0, 0)
	}):Play()

	if oldFrame then
		local t = TweenService:Create(oldFrame, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
			Position = UDim2.new(0, -26, 0, 0)
		})
		t:Play()
		t.Completed:Connect(function()
			oldFrame.Visible = false
			oldFrame.Position = UDim2.new(0, 0, 0, 0)
		end)
	end

	self.ActivePage = name
end

function App:_addTab(name, order)
	local b = UI.Button(self.TabsBar, name)
	b.LayoutOrder = order or 1
	b.Size = UDim2.new(0, 120, 0, 38)
	self.TabButtons[name] = b

	self.Maid:Give(b.MouseButton1Click:Connect(function()
		self:_switchPage(name)
	end))
end

function App:_setMenu(open, instant)
	self.MenuOpen = open
	if self.ArrowBtn then
		self.ArrowBtn.Text = open and "˅" or "˄"
	end

	if not self.MenuFrame or not self.MenuOpenPos or not self.MenuClosedPos then
		return
	end

	self._MenuAnimToken += 1
	local token = self._MenuAnimToken

	if self._MenuTween then
		pcall(function() self._MenuTween:Cancel() end)
		self._MenuTween = nil
	end

	local openPos = self.MenuOpenPos
	local closedPos = self.MenuClosedPos

	if instant then
		if open then
			self.MenuFrame.Visible = true
			self.MenuFrame.Position = openPos
			self.MenuFrame.BackgroundTransparency = 0.18
		else
			self.MenuFrame.Visible = false
			self.MenuFrame.Position = closedPos
			self.MenuFrame.BackgroundTransparency = 1
		end
		return
	end

	if open then
		self.MenuFrame.Visible = true
		self.MenuFrame.Position = closedPos
		self.MenuFrame.BackgroundTransparency = 1

		local tw = TweenService:Create(self.MenuFrame, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = openPos,
			BackgroundTransparency = 0.18
		})
		self._MenuTween = tw
		tw:Play()
	else
		self.MenuFrame.Visible = true
		local tw = TweenService:Create(self.MenuFrame, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
			Position = closedPos,
			BackgroundTransparency = 1
		})
		self._MenuTween = tw
		tw:Play()
		tw.Completed:Connect(function()
			if self._MenuAnimToken ~= token then return end
			if not self.MenuOpen then
				self.MenuFrame.Visible = false
			end
		end)
	end
end

function App:_ensureOriginalWalkSpeed(hum)
	if not hum then return end
	if self.OriginalWalkSpeed == nil then
		self.OriginalWalkSpeed = hum.WalkSpeed
	end
end

function App:_applyCustomWalkSpeedRule(hum, stateName)
	if not hum then return end
	self:_ensureOriginalWalkSpeed(hum)

	if stateName == "Walk" then
		local base = self.OriginalWalkSpeed or hum.WalkSpeed
		local slowed = math.max(CUSTOM_WALK_MIN, math.floor(base * CUSTOM_WALK_SLOW_MULT + 0.5))
		hum.WalkSpeed = slowed
	elseif stateName == "Run" then
		if self.OriginalWalkSpeed then
			hum.WalkSpeed = self.OriginalWalkSpeed
		end
	end
end

function App:SetPlayerSpeed(speed)
	local s = tonumber(speed)
	if not s then return false end
	s = math.clamp(s, CONFIG.Player.SpeedMin, CONFIG.Player.SpeedMax)
	s = math.floor(s + 0.5)

	local char = LocalPlayer.Character
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	if not hum then
		self.PlayerSpeed = s
		return true
	end

	self.PlayerSpeed = s
	self.OriginalWalkSpeed = s
	hum.WalkSpeed = s
	return true
end

function App:BuildUI()
	if self.GUI then self.GUI:Destroy() end

	local gui = Instance.new("ScreenGui")
	gui.Name = "SOS_HUD"
	gui.ResetOnSpawn = false
	gui.IgnoreGuiInset = true
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	gui.Parent = LocalPlayer:WaitForChild("PlayerGui")
	self.GUI = gui
	self.Maid:Give(gui)

	local fps = Instance.new("TextLabel")
	fps.Name = "FPS"
	fps.BackgroundTransparency = 1
	fps.AnchorPoint = Vector2.new(1, 1)
	fps.Position = UDim2.new(1, -6, 1, -6)
	fps.Size = UDim2.new(0, 140, 0, 18)
	fps.Font = Enum.Font.GothamBold
	fps.TextSize = 12
	fps.TextXAlignment = Enum.TextXAlignment.Right
	fps.TextYAlignment = Enum.TextYAlignment.Bottom
	fps.Text = "fps"
	fps.TextColor3 = Color3.fromRGB(80, 255, 80)
	fps.Parent = gui
	self.FpsLabel = fps

	local handle = Instance.new("Frame")
	handle.Name = "MenuHandle"
	handle.AnchorPoint = Vector2.new(0.5, 0)
	handle.Position = UDim2.new(0.5, 0, 0, 6)
	handle.Size = CONFIG.UI.HandleSize
	handle.BorderSizePixel = 0
	handle.Parent = gui
	UI.Corner(handle, 16)
	UI.Glass(handle)
	UI.Stroke(handle, 2)
	self.MenuHandle = handle

	local arrow = Instance.new("TextButton")
	arrow.Name = "Arrow"
	arrow.BackgroundTransparency = 1
	arrow.Size = UDim2.new(0, 40, 0, 40)
	arrow.Position = UDim2.new(0, 8, 0, 1)
	arrow.Text = "˄"
	arrow.Font = Enum.Font.GothamBold
	arrow.TextSize = 22
	arrow.TextColor3 = Color3.fromRGB(240, 240, 240)
	arrow.Parent = handle
	attachButtonClickSound(arrow)
	self.ArrowBtn = arrow

	local title = Instance.new("TextLabel")
	title.BackgroundTransparency = 1
	title.Size = UDim2.new(1, -90, 1, 0)
	title.Position = UDim2.new(0, 70, 0, 0)
	title.Font = Enum.Font.GothamBold
	title.TextSize = 18
	title.Text = "SOS HUD"
	title.TextColor3 = Color3.fromRGB(245, 245, 245)
	title.TextXAlignment = Enum.TextXAlignment.Center
	title.Parent = handle

	local menu = Instance.new("Frame")
	menu.Name = "Menu"
	menu.AnchorPoint = Vector2.new(0.5, 0)
	menu.Position = UDim2.new(0.5, 0, 0, 52)
	menu.Size = CONFIG.UI.MenuSize
	menu.BorderSizePixel = 0
	menu.Parent = gui
	UI.Corner(menu, 16)
	UI.Glass(menu)
	UI.Stroke(menu, 2)
	self.MenuFrame = menu

	self.MenuOpenPos = menu.Position
	self.MenuClosedPos = UDim2.new(
		self.MenuOpenPos.X.Scale, self.MenuOpenPos.X.Offset,
		self.MenuOpenPos.Y.Scale, self.MenuOpenPos.Y.Offset - (menu.Size.Y.Offset + 10)
	)

	local tabsBar = Instance.new("ScrollingFrame")
	tabsBar.Name = "TabsBar"
	tabsBar.BackgroundTransparency = 1
	tabsBar.BorderSizePixel = 0
	tabsBar.Position = UDim2.new(0, 14, 0, 10)
	tabsBar.Size = UDim2.new(1, -28, 0, 46)
	tabsBar.CanvasSize = UDim2.new(0, 0, 0, 0)
	tabsBar.ScrollBarThickness = 2
	tabsBar.ScrollingDirection = Enum.ScrollingDirection.X
	tabsBar.AutomaticCanvasSize = Enum.AutomaticSize.X
	tabsBar.Parent = menu
	self.TabsBar = tabsBar

	local tabsLayout = Instance.new("UIListLayout")
	tabsLayout.FillDirection = Enum.FillDirection.Horizontal
	tabsLayout.SortOrder = Enum.SortOrder.LayoutOrder
	tabsLayout.Padding = UDim.new(0, 10)
	tabsLayout.Parent = tabsBar

	local holder = Instance.new("Frame")
	holder.Name = "PagesHolder"
	holder.BackgroundTransparency = 1
	holder.Position = UDim2.new(0, 14, 0, 66)
	holder.Size = UDim2.new(1, -28, 1, -80)
	holder.ClipsDescendants = true
	holder.Parent = menu
	self.PagesHolder = holder

	local _, infoScroll = self:_makePage("Info")
	local _, controlsScroll = self:_makePage("Controls")
	local _, flyScroll = self:_makePage("Fly")
	local _, animScroll = self:_makePage("Anim Packs")
	local _, playerScroll = self:_makePage("Player")
	local _, camScroll = self:_makePage("Camera")
	local _, lightScroll = self:_makePage("Lighting")
	local _, serverScroll = self:_makePage("Server")
	local _, clientScroll = self:_makePage("Client")

	local micupScroll = nil
	if CONFIG.MicUp.PlaceIds[tostring(game.PlaceId)] then
		_, micupScroll = self:_makePage("Mic up")
	end

	-- INFO TAB
	do
		local header = UI.Text(infoScroll, "The Sins Of Scripting HUD", 16, true)
		header.Size = UDim2.new(1, 0, 0, 22)

		local msg = UI.Text(infoScroll,
			"Welcome.\n\nDiscord:\nPress to copy, or it will open if copy isn't supported.\n",
			14, false
		)
		msg.Size = UDim2.new(1, 0, 0, 90)

		local row = Instance.new("Frame")
		row.BackgroundTransparency = 1
		row.Size = UDim2.new(1, 0, 0, 44)
		row.Parent = infoScroll

		local rowLay = Instance.new("UIListLayout")
		rowLay.FillDirection = Enum.FillDirection.Horizontal
		rowLay.Padding = UDim.new(0, 10)
		rowLay.VerticalAlignment = Enum.VerticalAlignment.Center
		rowLay.Parent = row

		local discordBtn = UI.Button(row, "(SOS Server)")
		discordBtn.Size = UDim2.new(0, 180, 0, 36)

		local linkBox = UI.Input(row, "Press to copy")
		linkBox.Size = UDim2.new(1, -200, 0, 36)
		linkBox.Text = CONFIG.DiscordLink

		self.Maid:Give(discordBtn.MouseButton1Click:Connect(function()
			local copied = false
			pcall(function()
				if typeof(setclipboard) == "function" then
					setclipboard(CONFIG.DiscordLink)
					copied = true
				end
			end)

			if copied then
				notify("SOS Server", "Copied to clipboard.", 2)
			else
				pcall(function() linkBox:CaptureFocus() end)
				pcall(function() GuiService:OpenBrowserWindow(CONFIG.DiscordLink) end)
				notify("SOS Server", "Press to copy (use the box).", 3)
			end
		end))
	end

	-- CONTROLS TAB (new)
	do
		local header = UI.Text(controlsScroll, "Controls", 16, true)
		header.Size = UDim2.new(1, 0, 0, 22)

		local t = UI.Text(controlsScroll,
			"PC:\n- Fly Toggle: F\n- Menu Toggle: H\n- Move: WASD\n- Up/Down: Q/E\n\nMouse Look:\n- Flight faces where your camera looks (up/down works).\n\nExtra Tilt:\n- Hold Q: tilt 90 degrees down\n- Hold E: no tilt\n\nMobile:\n- Use the Fly button (bottom-right)\n- Use the top arrow to open/close the menu",
			14, false
		)
		t.Size = UDim2.new(1, 0, 0, 260)
	end

	-- FLY TAB
	do
		local header = UI.Text(flyScroll, "Flight", 16, true)
		header.Size = UDim2.new(1, 0, 0, 22)

		local warn = UI.Text(flyScroll,
			"Flight emote IDs must be published Creator Store emotes.\nIf you paste random IDs, it can fail.",
			13, false
		)
		warn.Size = UDim2.new(1, 0, 0, 44)
		warn.TextColor3 = Color3.fromRGB(210, 210, 210)

		local emHdr = UI.Text(flyScroll, "Flight Emotes", 16, true)
		emHdr.Size = UDim2.new(1, 0, 0, 22)

		local arNote = UI.Text(flyScroll, "A = Apply    R = Reset", 13, true)
		arNote.Size = UDim2.new(1, 0, 0, 18)
		arNote.TextColor3 = Color3.fromRGB(210, 210, 210)

		local function makeIdRow(labelText, getFn, setFn, resetFn)
			local row = Instance.new("Frame")
			row.BackgroundTransparency = 1
			row.Size = UDim2.new(1, 0, 0, 44)
			row.Parent = flyScroll

			local l = UI.Text(row, labelText, 14, true)
			l.Size = UDim2.new(0, 120, 1, 0)

			local box = UI.Input(row, "rbxassetid://... or number")
			box.Size = UDim2.new(1, -240, 0, 36)
			box.Position = UDim2.new(0, 130, 0, 4)
			box.Text = getFn()

			local applyBtn = UI.Button(row, "A")
			applyBtn.Size = UDim2.new(0, 70, 0, 36)
			applyBtn.Position = UDim2.new(1, -100, 0, 4)

			local resetBtn = UI.Button(row, "R")
			resetBtn.Size = UDim2.new(0, 70, 0, 36)
			resetBtn.Position = UDim2.new(1, -20, 0, 4)
			resetBtn.AnchorPoint = Vector2.new(1, 0)

			self.Maid:Give(applyBtn.MouseButton1Click:Connect(function()
				local ok = setFn(box.Text)
				if not ok then
					notify("Flight Emotes", "Invalid ID.", 3)
					return
				end
				notify("Flight Emotes", "Applied.", 2)
			end))

			self.Maid:Give(resetBtn.MouseButton1Click:Connect(function()
				resetFn()
				box.Text = getFn()
				notify("Flight Emotes", "Reset.", 2)
			end))
		end

		makeIdRow("FLOAT_ID:", function() return self.Flight.FloatId end, function(v) return self.Flight:SetFloatAnim(v) end, function() self.Flight:SetFloatAnim(CONFIG.Flight.Animations.DefaultFloat) end)
		makeIdRow("FLY_ID:", function() return self.Flight.FlyId end, function(v) return self.Flight:SetFlyAnim(v) end, function() self.Flight:SetFlyAnim(CONFIG.Flight.Animations.DefaultFly) end)

		local speedHdr = UI.Text(flyScroll, "Fly Speed", 16, true)
		speedHdr.Size = UDim2.new(1, 0, 0, 22)

		local speedRow = Instance.new("Frame")
		speedRow.BackgroundTransparency = 1
		speedRow.Size = UDim2.new(1, 0, 0, 56)
		speedRow.Parent = flyScroll

		local speedLabel = UI.Text(speedRow, "Speed: " .. tostring(CONFIG.Flight.Speed), 14, true)
		speedLabel.Size = UDim2.new(1, 0, 0, 18)

		local sliderBg = Instance.new("Frame")
		sliderBg.BackgroundColor3 = Color3.fromRGB(16, 16, 20)
		sliderBg.BackgroundTransparency = 0.15
		sliderBg.BorderSizePixel = 0
		sliderBg.Position = UDim2.new(0, 0, 0, 26)
		sliderBg.Size = UDim2.new(1, 0, 0, 10)
		sliderBg.Parent = speedRow
		UI.Corner(sliderBg, 999)

		local sliderFill = Instance.new("Frame")
		sliderFill.BackgroundColor3 = Color3.fromRGB(200, 40, 40)
		sliderFill.BorderSizePixel = 0
		sliderFill.Size = UDim2.new(0, 0, 1, 0)
		sliderFill.Parent = sliderBg
		UI.Corner(sliderFill, 999)

		local knob = Instance.new("Frame")
		knob.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
		knob.BorderSizePixel = 0
		knob.Size = UDim2.new(0, 14, 0, 14)
		knob.Parent = sliderBg
		UI.Corner(knob, 999)

		local function setSpeedFromAlpha(a)
			a = clamp01(a)
			local s = CONFIG.Flight.SpeedMin + (CONFIG.Flight.SpeedMax - CONFIG.Flight.SpeedMin) * a
			self.Flight:SetSpeed(s)
			speedLabel.Text = "Speed: " .. tostring(CONFIG.Flight.Speed)
			sliderFill.Size = UDim2.new(a, 0, 1, 0)
			knob.Position = UDim2.new(a, -7, 0.5, -7)
		end

		setSpeedFromAlpha((CONFIG.Flight.Speed - CONFIG.Flight.SpeedMin) / (CONFIG.Flight.SpeedMax - CONFIG.Flight.SpeedMin))

		local dragging = false
		self.Maid:Give(sliderBg.InputBegan:Connect(function(i)
			if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
				dragging = true
			end
		end))
		self.Maid:Give(sliderBg.InputEnded:Connect(function(i)
			if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
				dragging = false
			end
		end))
		self.Maid:Give(UserInputService.InputChanged:Connect(function(i)
			if not dragging then return end
			if i.UserInputType ~= Enum.UserInputType.MouseMovement and i.UserInputType ~= Enum.UserInputType.Touch then return end
			local a = (i.Position.X - sliderBg.AbsolutePosition.X) / sliderBg.AbsoluteSize.X
			setSpeedFromAlpha(a)
		end))
	end

	-- ANIM PACKS TAB (Custom updated, TF2/NarutoRun/Samurai removed, Robot Speed 3 moved to Run)
	do
		local header = UI.Text(animScroll, "Anim Packs", 16, true)
		header.Size = UDim2.new(1, 0, 0, 22)

		local help = UI.Text(animScroll, "Pick a state, then choose a pack. Custom contains your IDs.", 13, false)
		help.Size = UDim2.new(1, 0, 0, 34)
		help.TextColor3 = Color3.fromRGB(210, 210, 210)

		local stateBar = Instance.new("ScrollingFrame")
		stateBar.BackgroundTransparency = 1
		stateBar.BorderSizePixel = 0
		stateBar.Size = UDim2.new(1, 0, 0, 44)
		stateBar.CanvasSize = UDim2.new(0, 0, 0, 0)
		stateBar.AutomaticCanvasSize = Enum.AutomaticSize.X
		stateBar.ScrollingDirection = Enum.ScrollingDirection.X
		stateBar.ScrollBarThickness = 2
		stateBar.Parent = animScroll

		local stLayout = Instance.new("UIListLayout")
		stLayout.FillDirection = Enum.FillDirection.Horizontal
		stLayout.SortOrder = Enum.SortOrder.LayoutOrder
		stLayout.Padding = UDim.new(0, 12)
		stLayout.Parent = stateBar

		local catBar = Instance.new("ScrollingFrame")
		catBar.BackgroundTransparency = 1
		catBar.BorderSizePixel = 0
		catBar.Size = UDim2.new(1, 0, 0, 44)
		catBar.CanvasSize = UDim2.new(0, 0, 0, 0)
		catBar.AutomaticCanvasSize = Enum.AutomaticSize.X
		catBar.ScrollingDirection = Enum.ScrollingDirection.X
		catBar.ScrollBarThickness = 2
		catBar.Parent = animScroll

		local catLayout = Instance.new("UIListLayout")
		catLayout.FillDirection = Enum.FillDirection.Horizontal
		catLayout.SortOrder = Enum.SortOrder.LayoutOrder
		catLayout.Padding = UDim.new(0, 12)
		catLayout.Parent = catBar

		local listScroll = Instance.new("ScrollingFrame")
		listScroll.BackgroundTransparency = 1
		listScroll.BorderSizePixel = 0
		listScroll.Size = UDim2.new(1, 0, 0, 240)
		listScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
		listScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
		listScroll.ScrollBarThickness = 4
		listScroll.Parent = animScroll

		local pad = Instance.new("UIPadding")
		pad.PaddingTop = UDim.new(0, 6)
		pad.PaddingBottom = UDim.new(0, 6)
		pad.PaddingLeft = UDim.new(0, 2)
		pad.PaddingRight = UDim.new(0, 2)
		pad.Parent = listScroll

		local container = Instance.new("Frame")
		container.BackgroundTransparency = 1
		container.Size = UDim2.new(1, 0, 0, 0)
		container.Parent = listScroll

		local lay = Instance.new("UIListLayout")
		lay.SortOrder = Enum.SortOrder.LayoutOrder
		lay.Padding = UDim.new(0, 10)
		lay.Parent = container

		local chosenState = "Idle"
		local chosenCat = "Unreleased"
		local stateBtns = {}
		local catBtns = {}

		local function clearList()
			for _, ch in ipairs(container:GetChildren()) do
				if ch:IsA("TextButton") or ch:IsA("TextLabel") or ch:IsA("Frame") then
					ch:Destroy()
				end
			end
		end

		local function applyAnimIdForState(stateName, idNumOrStr, isCustomCategory)
			local char = LocalPlayer.Character
			local hum = char and char:FindFirstChildOfClass("Humanoid")
			if not char or not hum then
				notify("Anim Packs", "Character not ready.", 2)
				return
			end

			local idStr = toAssetIdString(idNumOrStr)
			if not idStr then
				notify("Anim Packs", "Invalid ID.", 2)
				return
			end

			StateOverrides[stateName] = idStr
			local ok, err = applyStateOverride(char, hum, stateName, idStr)
			if ok then
				if isCustomCategory then
					self:_applyCustomWalkSpeedRule(hum, stateName)
				end
				notify("Anim Packs", "Set " .. stateName .. " OK.", 2)
			else
				notify("Anim Packs", err or "Failed.", 3)
			end
		end

		local function rebuild()
			clearList()

			if chosenCat == "Custom" then
				local list = CustomAnims[chosenState]
				if not list or #list == 0 then
					local t = UI.Text(container, "No Custom entries for: " .. chosenState, 14, true)
					t.Size = UDim2.new(1, 0, 0, 28)
					return
				end

				for _, entry in ipairs(list) do
					local b = UI.Button(container, entry.Name)
					b.Size = UDim2.new(1, 0, 0, 36)
					self.Maid:Give(b.MouseButton1Click:Connect(function()
						applyAnimIdForState(chosenState, entry.Id, true)
					end))
				end
				return
			end

			local names = listPackNames(chosenCat == "Unreleased" and "Unreleased" or "Roblox Anims")
			for _, packName in ipairs(names) do
				local b = UI.Button(container, packName)
				b.Size = UDim2.new(1, 0, 0, 36)
				self.Maid:Give(b.MouseButton1Click:Connect(function()
					local id = getPackIdForState(packName, chosenState)
					if not id then
						notify("Anim Packs", "No ID for: " .. chosenState, 2)
						return
					end
					applyAnimIdForState(chosenState, id, false)
				end))
			end
		end

		local function setState(s)
			chosenState = s
			for name, btn in pairs(stateBtns) do
				setTabActive(btn, name == s)
			end
			rebuild()
		end

		local function setCategory(c)
			chosenCat = c
			for name, btn in pairs(catBtns) do
				setTabActive(btn, name == c)
			end
			rebuild()
		end

		for _, s in ipairs({ "Idle","Walk","Run","Jump","Climb","Fall","Swim" }) do
			local b = UI.Button(stateBar, s)
			b.Size = UDim2.new(0, 110, 0, 36)
			stateBtns[s] = b
			self.Maid:Give(b.MouseButton1Click:Connect(function() setState(s) end))
		end

		for _, c in ipairs({ "Roblox Anims","Unreleased","Custom" }) do
			local b = UI.Button(catBar, c)
			b.Size = UDim2.new(0, (c == "Roblox Anims" and 160 or 130), 0, 36)
			catBtns[c] = b
			self.Maid:Give(b.MouseButton1Click:Connect(function() setCategory(c) end))
		end

		setCategory(chosenCat)
		setState(chosenState)
	end

	-- PLAYER TAB (new, after Anim Packs) with secondary tab "Speed"
	do
		local header = UI.Text(playerScroll, "Player", 16, true)
		header.Size = UDim2.new(1, 0, 0, 22)

		local hint = UI.Text(playerScroll, "Player settings.", 13, false)
		hint.Size = UDim2.new(1, 0, 0, 22)
		hint.TextColor3 = Color3.fromRGB(210, 210, 210)

		local bar = Instance.new("Frame")
		bar.BackgroundTransparency = 1
		bar.Size = UDim2.new(1, 0, 0, 44)
		bar.Parent = playerScroll

		local barLay = Instance.new("UIListLayout")
		barLay.FillDirection = Enum.FillDirection.Horizontal
		barLay.Padding = UDim.new(0, 10)
		barLay.VerticalAlignment = Enum.VerticalAlignment.Center
		barLay.Parent = bar

		local speedTab = UI.Button(bar, "Speed")
		speedTab.Size = UDim2.new(0, 140, 0, 36)

		local speedPanel = Instance.new("Frame")
		speedPanel.BackgroundTransparency = 1
		speedPanel.Size = UDim2.new(1, 0, 0, 0)
		speedPanel.AutomaticSize = Enum.AutomaticSize.Y
		speedPanel.Parent = playerScroll

		local spLay = Instance.new("UIListLayout")
		spLay.SortOrder = Enum.SortOrder.LayoutOrder
		spLay.Padding = UDim.new(0, 10)
		spLay.Parent = speedPanel

		setTabActive(speedTab, true)

		local cur = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		local currentSpeed = cur and cur.WalkSpeed or (self.PlayerSpeed or 16)
		currentSpeed = math.clamp(currentSpeed, CONFIG.Player.SpeedMin, CONFIG.Player.SpeedMax)
		self.PlayerSpeed = math.floor(currentSpeed + 0.5)

		local speedHdr = UI.Text(speedPanel, "WalkSpeed", 16, true)
		speedHdr.Size = UDim2.new(1, 0, 0, 22)

		local speedRow = Instance.new("Frame")
		speedRow.BackgroundTransparency = 1
		speedRow.Size = UDim2.new(1, 0, 0, 56)
		speedRow.Parent = speedPanel

		local speedLabel = UI.Text(speedRow, "Speed: " .. tostring(self.PlayerSpeed), 14, true)
		speedLabel.Size = UDim2.new(1, 0, 0, 18)

		local sliderBg = Instance.new("Frame")
		sliderBg.BackgroundColor3 = Color3.fromRGB(16, 16, 20)
		sliderBg.BackgroundTransparency = 0.15
		sliderBg.BorderSizePixel = 0
		sliderBg.Position = UDim2.new(0, 0, 0, 26)
		sliderBg.Size = UDim2.new(1, 0, 0, 10)
		sliderBg.Parent = speedRow
		UI.Corner(sliderBg, 999)

		local sliderFill = Instance.new("Frame")
		sliderFill.BackgroundColor3 = Color3.fromRGB(200, 40, 40)
		sliderFill.BorderSizePixel = 0
		sliderFill.Size = UDim2.new(0, 0, 1, 0)
		sliderFill.Parent = sliderBg
		UI.Corner(sliderFill, 999)

		local knob = Instance.new("Frame")
		knob.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
		knob.BorderSizePixel = 0
		knob.Size = UDim2.new(0, 14, 0, 14)
		knob.Parent = sliderBg
		UI.Corner(knob, 999)

		local function setPlayerSpeedFromAlpha(a)
			a = clamp01(a)
			local s = CONFIG.Player.SpeedMin + (CONFIG.Player.SpeedMax - CONFIG.Player.SpeedMin) * a
			self:SetPlayerSpeed(s)
			speedLabel.Text = "Speed: " .. tostring(self.PlayerSpeed or s)
			sliderFill.Size = UDim2.new(a, 0, 1, 0)
			knob.Position = UDim2.new(a, -7, 0.5, -7)
		end

		local alpha = (self.PlayerSpeed - CONFIG.Player.SpeedMin) / (CONFIG.Player.SpeedMax - CONFIG.Player.SpeedMin)
		setPlayerSpeedFromAlpha(alpha)

		local dragging = false
		self.Maid:Give(sliderBg.InputBegan:Connect(function(i)
			if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
				dragging = true
			end
		end))
		self.Maid:Give(sliderBg.InputEnded:Connect(function(i)
			if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
				dragging = false
			end
		end))
		self.Maid:Give(UserInputService.InputChanged:Connect(function(i)
			if not dragging then return end
			if i.UserInputType ~= Enum.UserInputType.MouseMovement and i.UserInputType ~= Enum.UserInputType.Touch then return end
			local a2 = (i.Position.X - sliderBg.AbsolutePosition.X) / sliderBg.AbsoluteSize.X
			setPlayerSpeedFromAlpha(a2)
		end))
	end

	-- LIGHTING TAB
	do
		local header = UI.Text(lightScroll, "Lighting", 16, true)
		header.Size = UDim2.new(1, 0, 0, 22)

		local hint = UI.Text(lightScroll, "Sky presets + toggleable effects (no duplication).", 13, false)
		hint.Size = UDim2.new(1, 0, 0, 28)
		hint.TextColor3 = Color3.fromRGB(210, 210, 210)

		local bar = Instance.new("Frame")
		bar.BackgroundTransparency = 1
		bar.Size = UDim2.new(1, 0, 0, 44)
		bar.Parent = lightScroll

		local barLay = Instance.new("UIListLayout")
		barLay.FillDirection = Enum.FillDirection.Horizontal
		barLay.Padding = UDim.new(0, 10)
		barLay.VerticalAlignment = Enum.VerticalAlignment.Center
		barLay.Parent = bar

		local skyBtn = UI.Button(bar, "Sky")
		skyBtn.Size = UDim2.new(0, 120, 0, 36)

		local effBtn = UI.Button(bar, "Effects")
		effBtn.Size = UDim2.new(0, 120, 0, 36)

		local resetBtn = UI.Button(bar, "Reset")
		resetBtn.Size = UDim2.new(0, 120, 0, 36)

		local skyPanel = Instance.new("Frame")
		skyPanel.BackgroundTransparency = 1
		skyPanel.Size = UDim2.new(1, 0, 0, 0)
		skyPanel.AutomaticSize = Enum.AutomaticSize.Y
		skyPanel.Parent = lightScroll

		local skyLay = Instance.new("UIListLayout")
		skyLay.SortOrder = Enum.SortOrder.LayoutOrder
		skyLay.Padding = UDim.new(0, 10)
		skyLay.Parent = skyPanel

		local effPanel = Instance.new("Frame")
		effPanel.BackgroundTransparency = 1
		effPanel.Size = UDim2.new(1, 0, 0, 0)
		effPanel.AutomaticSize = Enum.AutomaticSize.Y
		effPanel.Visible = false
		effPanel.Parent = lightScroll

		local effLay = Instance.new("UIListLayout")
		effLay.SortOrder = Enum.SortOrder.LayoutOrder
		effLay.Padding = UDim.new(0, 10)
		effLay.Parent = effPanel

		local presetLabel = UI.Text(skyPanel, "Current: " .. self.Lighting.ActivePreset, 13, true)
		presetLabel.Size = UDim2.new(1, 0, 0, 18)
		presetLabel.TextColor3 = Color3.fromRGB(210, 210, 210)

		local function show(which)
			local skyOn = (which == "Sky")
			skyPanel.Visible = skyOn
			effPanel.Visible = not skyOn
			setTabActive(skyBtn, skyOn)
			setTabActive(effBtn, not skyOn)
		end

		local function addPresetBtn(name)
			local b = UI.Button(skyPanel, name)
			b.Size = UDim2.new(1, 0, 0, 36)
			self.Maid:Give(b.MouseButton1Click:Connect(function()
				if self.Lighting:SetPreset(name) then
					presetLabel.Text = "Current: " .. self.Lighting.ActivePreset
					notify("Lighting", "Preset: " .. name, 2)
				end
			end))
		end

		addPresetBtn("Red Galaxy")
		addPresetBtn("Deep Galaxy")
		addPresetBtn("Anime Clouds")
		addPresetBtn("Vibrant Clouds")
		addPresetBtn("Blocky Sky")

		local function makeToggle(label, effectKey, effectInstName)
			local line = Instance.new("Frame")
			line.BackgroundTransparency = 1
			line.Size = UDim2.new(1, 0, 0, 44)
			line.Parent = effPanel

			local l = UI.Text(line, label, 14, true)
			l.Size = UDim2.new(0, 220, 1, 0)

			local btn = UI.Button(line, "OFF")
			btn.Size = UDim2.new(0, 110, 0, 34)
			btn.Position = UDim2.new(1, -110, 0.5, -17)
			btn.AnchorPoint = Vector2.new(1, 0)

			local function refresh()
				local on = self.Lighting:IsEffectOn(effectInstName)
				btn.Text = on and "ON" or "OFF"
				setTabActive(btn, on)
			end

			self.Maid:Give(btn.MouseButton1Click:Connect(function()
				local on = self.Lighting:IsEffectOn(effectInstName)
				self.Lighting:ToggleEffect(effectKey, not on)
				refresh()
			end))

			refresh()
		end

		makeToggle("Bloom", "Bloom", "SOS_Bloom")
		makeToggle("Color Correction", "ColorCorrection", "SOS_ColorCorrection")
		makeToggle("Atmosphere", "Atmosphere", "SOS_Atmosphere")
		makeToggle("Sun Rays", "SunRays", "SOS_SunRays")
		makeToggle("Depth Of Field", "DepthOfField", "SOS_DepthOfField")
		makeToggle("Motion Blur", "MotionBlur", "SOS_MotionBlur")

		self.Maid:Give(skyBtn.MouseButton1Click:Connect(function() show("Sky") end))
		self.Maid:Give(effBtn.MouseButton1Click:Connect(function() show("Effects") end))
		self.Maid:Give(resetBtn.MouseButton1Click:Connect(function()
			self.Lighting:Reset()
			presetLabel.Text = "Current: " .. self.Lighting.ActivePreset
			notify("Lighting", "Reset done.", 2)
		end))

		show("Sky")
	end

	-- MIC UP TAB
	if micupScroll then
		local header = UI.Text(micupScroll, "Mic up", 16, true)
		header.Size = UDim2.new(1, 0, 0, 22)

		local msg = UI.Text(micupScroll,
			"VIP utility.\nIf you own VIP, you can claim the Better Speed Coil.",
			14, false
		)
		msg.Size = UDim2.new(1, 0, 0, 80)

		local coilBtn = UI.Button(micupScroll, "Get Better Speed Coil")
		coilBtn.Size = UDim2.new(1, 0, 0, 40)
		self.Maid:Give(coilBtn.MouseButton1Click:Connect(function()
			giveBetterSpeedCoil()
		end))
	end

	-- SERVER TAB
	do
		local header = UI.Text(serverScroll, "Server", 16, true)
		header.Size = UDim2.new(1, 0, 0, 22)

		local controls = UI.Text(serverScroll, "Rejoin same server or hop (best-effort highest players).", 14, false)
		controls.Size = UDim2.new(1, 0, 0, 40)

		local row = Instance.new("Frame")
		row.BackgroundTransparency = 1
		row.Size = UDim2.new(1, 0, 0, 44)
		row.Parent = serverScroll

		local lay = Instance.new("UIListLayout")
		lay.FillDirection = Enum.FillDirection.Horizontal
		lay.Padding = UDim.new(0, 10)
		lay.Parent = row

		local rejoinBtn = UI.Button(row, "Rejoin")
		rejoinBtn.Size = UDim2.new(0, 220, 0, 36)

		local hopBtn = UI.Button(row, "Server Hop")
		hopBtn.Size = UDim2.new(0, 140, 0, 36)

		self.Maid:Give(rejoinBtn.MouseButton1Click:Connect(function()
			notify("Server", "Rejoining...", 2)
			pcall(function()
				TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
			end)
		end))

		self.Maid:Give(hopBtn.MouseButton1Click:Connect(function()
			notify("Server", "Searching servers...", 2)

			task.spawn(function()
				local placeId = game.PlaceId
				local cursor = ""
				local best

				for _ = 1, 3 do
					local url = "https://games.roblox.com/v1/games/" .. tostring(placeId) .. "/servers/Public?sortOrder=Desc&limit=100"
					if cursor ~= "" then
						url = url .. "&cursor=" .. HttpService:UrlEncode(cursor)
					end

					local ok, res = pcall(function()
						return HttpService:GetAsync(url)
					end)

					if not ok then
						notify("Server Hop", "HTTP failed (HttpEnabled off?)", 4)
						pcall(function() TeleportService:Teleport(placeId, LocalPlayer) end)
						return
					end

					local data = HttpService:JSONDecode(res)
					for _, srv in ipairs(data.data or {}) do
						if srv.id and srv.id ~= game.JobId then
							if not best or (srv.playing or 0) > (best.playing or 0) then
								best = srv
							end
						end
					end

					cursor = data.nextPageCursor or ""
					if cursor == "" then break end
				end

				if best and best.id then
					notify("Server Hop", "Teleporting...", 2)
					pcall(function()
						TeleportService:TeleportToPlaceInstance(placeId, best.id, LocalPlayer)
					end)
				else
					notify("Server Hop", "No server found. Normal teleport.", 3)
					pcall(function() TeleportService:Teleport(placeId, LocalPlayer) end)
				end
			end)
		end))
	end

	-- Placeholders
	local function fillEmpty(scroll, text)
		local t = UI.Text(scroll, text, 14, true)
		t.Size = UDim2.new(1, 0, 0, 60)
	end
	fillEmpty(camScroll, "Camera controls (coming soon)")
	fillEmpty(clientScroll, "Client controls (coming soon)")

	-- Tabs (Controls inserted next to Info, Player after Anim Packs)
	self:_addTab("Info", 1)
	self:_addTab("Controls", 2)
	self:_addTab("Fly", 3)
	self:_addTab("Anim Packs", 4)
	self:_addTab("Player", 5)
	self:_addTab("Camera", 6)
	self:_addTab("Lighting", 7)
	self:_addTab("Server", 8)
	self:_addTab("Client", 9)
	if micupScroll then
		self:_addTab("Mic up", 10)
	end

	self.Pages["Info"].Page.Visible = true
	setTabActive(self.TabButtons["Info"], true)

	self.Maid:Give(self.ArrowBtn.MouseButton1Click:Connect(function()
		self:_setMenu(not self.MenuOpen, false)
	end))

	self.ToggleMenuFn = function()
		self:_setMenu(not self.MenuOpen, false)
	end

	self.MenuHandle.Visible = false
	self.MenuFrame.Visible = false

	playIntro(gui)

	task.delay(CONFIG.UI.MenuShowDelaySeconds, function()
		if not gui.Parent then return end
		self.MenuHandle.Visible = true
		if CONFIG.UI.MenuStartClosed then
			self:_setMenu(false, true)
		else
			self:_setMenu(true, true)
		end
	end)

	local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
	if isMobile then
		local mobileBtn = UI.Button(gui, "Fly")
		mobileBtn.Name = "MobileFly"
		mobileBtn.AnchorPoint = Vector2.new(1, 1)
		mobileBtn.Position = CONFIG.UI.MobileFlyPos
		mobileBtn.Size = CONFIG.UI.MobileFlySize
		mobileBtn.TextSize = 18

		self.Maid:Give(mobileBtn.MouseButton1Click:Connect(function()
			self.Flight:Toggle()
		end))
	end
end

function App:BindInputs()
	self.Maid:Give(UserInputService.InputBegan:Connect(function(input, gp)
		if gp then return end
		if input.KeyCode == CONFIG.Keys.ToggleFly then
			self.Flight:Toggle()
		elseif input.KeyCode == CONFIG.Keys.ToggleMenu then
			if self.ToggleMenuFn then
				self.ToggleMenuFn()
			end
		end
	end))
end

function App:BindCharacter()
	local function onChar(char)
		task.wait(0.05)
		self.Flight:BindCharacter(char)

		local hum = char:FindFirstChildOfClass("Humanoid")
		if hum then
			if self.PlayerSpeed then
				hum.WalkSpeed = self.PlayerSpeed
				self.OriginalWalkSpeed = self.PlayerSpeed
			else
				self.OriginalWalkSpeed = hum.WalkSpeed
				self.PlayerSpeed = hum.WalkSpeed
			end

			for state, asset in pairs(StateOverrides) do
				if asset then
					applyStateOverride(char, hum, state, asset)
				end
			end
		end

		if self.Flight.Flying then
			self.Flight:Stop()
		end
	end

	if LocalPlayer.Character then
		onChar(LocalPlayer.Character)
	end

	self.Maid:Give(LocalPlayer.CharacterAdded:Connect(onChar))
end

function App:StartLoops()
	self.Maid:Give(RunService.RenderStepped:Connect(function(dt)
		self.FpsAcc += dt
		self.FpsFrames += 1
		if self.FpsAcc >= 0.25 then
			self.FpsValue = math.floor((self.FpsFrames / self.FpsAcc) + 0.5)
			self.FpsAcc = 0
			self.FpsFrames = 0
		end

		if self.FpsLabel then
			self.FpsLabel.Text = tostring(self.FpsValue) .. " fps"
			if self.FpsValue < 40 then
				self.FpsLabel.TextColor3 = Color3.fromRGB(255, 60, 60)
			elseif self.FpsValue < 60 then
				self.FpsLabel.TextColor3 = Color3.fromRGB(255, 220, 80)
			elseif self.FpsValue < 76 then
				self.FpsLabel.TextColor3 = Color3.fromRGB(80, 255, 80)
			elseif self.FpsValue < 121 then
				self.FpsLabel.TextColor3 = Color3.fromRGB(80, 255, 220)
			elseif self.FpsValue < 241 then
				self.FpsLabel.TextColor3 = Color3.fromRGB(80, 140, 255)
			else
				self.RainbowHue = (self.RainbowHue + dt * 0.6) % 1
				self.FpsLabel.TextColor3 = Color3.fromHSV(self.RainbowHue, 1, 1)
			end
		end

		self.Flight:Update(dt)
	end))
end

--====================================================
-- Boot
--====================================================
local app = App.new()
app:BuildUI()
app:BindInputs()
app:BindCharacter()
app:StartLoops()

notify("SOS HUD", "Loaded.", 2)
