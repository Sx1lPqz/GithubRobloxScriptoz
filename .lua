-- unleaked script PLEASE DONT LEAK



local Player = game.Players.LocalPlayer.Character

local LocalPlayer = game.Players.LocalPlayer

local Mouse = LocalPlayer:GetMouse()

local RunService = game:GetService("RunService")

local workspace = game:GetService("Workspace")

local Light = game:GetService("Lighting")

local camera = workspace.CurrentCamera

local worldToViewportPoint = camera.worldToViewportPoint


local function fail(r) return LocalPlayer:Kick(r) end

local usedCache = shared.__urlcache and next(shared.__urlcache) ~= nil

shared.__urlcache = shared.__urlcache or {}
local function httpload(url)
    local success, result

    if shared.__urlcache[url] then
        success, result = true, shared.__urlcache[url]
    else
        success, result = pcall(game.HttpGet, game, url)
    end

    if (not success) then
        return fail(string.format('Failed to GET url %q for reason: %q', url, tostring(result)))
    end

    local fn, err = loadstring(result)
    if (type(fn) ~= 'function') then
        return fail(string.format('Failed to loadstring url %q for reason: %q', url, tostring(err)))
    end

    local results = { pcall(fn) }
    if (not results[1]) then
        return fail(string.format('Failed to initialize url %q for reason: %q', url, tostring(results[2])))
    end

    shared.__urlcache[url] = result
    return unpack(results, 2)
end

local prefix = "Vv"

local function log(text)
    print(prefix..text)
end

local function warn(text)
    warn(prefix..text)
end


local ReplicatedStorage = game:GetService("ReplicatedStorage")

local MainEvent = ReplicatedStorage.MainEvent

local HB = RunService.Heartbeat

do 
   local oldFunc = nil

  oldFunc = hookfunction(MainEvent.FireServer, newcclosure(function(Event, ...)
     local args = {...}

     if args[1] == "CHECKER_1" or args[1] == "TeleportDetect" or args[1] == "OneMoreTime" then
        return nil
     end

     return oldFunc(Event, ...)
  end))

   HB:Connect(function()
       local root = LocalPlayer.Character and LocalPlayer.Character.PrimaryPart

       if root then
           for i,v in pairs(getconnections(root:GetPropertyChangedSignal("CFrame"))) do
               v:Disable()
           end
       end
   end)

  local function added(char)
     while true do
           if not char then return end
        HB:Wait()
        for i,v in pairs(char:GetChildren()) do
           if v:IsA("Script") and v:FindFirstChildOfClass("LocalScript") then
              v:FindFirstChildOfClass("LocalScript").Source = "Cleared"
              return
           end
        end
     end
  end

  if LocalPlayer.Character then
     added(LocalPlayer.Character)
  end

  LocalPlayer.CharacterAdded:Connect(added)

end

getgenv().floatingzss = false

repeat wait() until game.Players.LocalPlayer.Character

local plr = game.Players.LocalPlayer
local char = plr.Character
local Torso = char:WaitForChild("LowerTorso")
local Mouse = plr:GetMouse()


            local BV = Instance.new("BodyVelocity",Torso)
            BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge,math.huge)
            while getgenv().floatingzss == true do
                BV.Velocity = Mouse.Hit.lookVector*0
                wait()
                end


if getgenv().floatingzss == false then
            Torso:FindFirstChildOfClass("BodyVelocity"):remove()
end
        
    local library = loadstring(game:HttpGet("https://pastebin.com/raw/vyqDRebf"))()
    local library = loadstring(game:HttpGet("https://pastebin.com/raw/rNE2mrZq"))() 
    
    




local EmpNotif = loadstring(game:HttpGet("https://pastebin.com/raw/iFwSWa35"))();
local Notify = EmpNotif.Notify;

      getgenv().MouseLockEnabled = false 
        getgenv().Enabledz = false
        getgenv().Keysz = 'x'
        getgenv().Predictions = 0.125
        getgenv().AimParts = "LowerTorso"



getgenv().Key = Enum.KeyCode.X
getgenv().Prediction = 1.23442
getgenv().AirshotFunccc = false
getgenv().Tracer = false
getgenv().Partz = "LowerTorso" -- LowerTorso, HumanoidRootPart,Head,UpperTorso
getgenv().Notificationmode = false

local guimain = Instance.new("Folder", game.CoreGui)
local CC = game:GetService "Workspace".CurrentCamera
local LocalMouse = game.Players.LocalPlayer:GetMouse()
local Locking = false
local cc = game:GetService("Workspace").CurrentCamera
local gs = game:GetService("GuiService")
local ggi = gs.GetGuiInset
local lp = game:GetService("Players").LocalPlayer
local mouse = lp:GetMouse()

local Tracer = Drawing.new("Line")
Tracer.Visible = false
Tracer.Color = Color3.fromRGB(0, 255, 255)
Tracer.Thickness = 1
Tracer.Transparency = 1

local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://8797307263"

if not sound.IsLoaded then
	sound.Loaded:wait()
end

local sound1 = Instance.new("Sound", game.Workspace)
sound1.SoundId = "rbxassetid://8797308613"

if not sound1.IsLoaded then
	sound1.Loaded:wait()
end

local StepTable = {}
local function BindToSteppedold(name, num, func)
	if StepTable[name] == nil then
		StepTable[name] = game:GetService("RunService").Stepped:connect(func)
	end
end

local function UnbindFromSteppedold(name)
	if StepTable[name] then
		StepTable[name]:Disconnect()
		StepTable[name] = nil
	end
end

local Part = Instance.new("Part", game.Workspace)

Part.Anchored = true
Part.CanCollide = false
Part.Color = Color3.fromRGB(0, 0, 255)
Part.Material = Enum.Material.Neon
Part.Size = Vector3.new(0.93, 0.93, 0.93)
Part.Shape = Enum.PartType.Block

game:GetService("RunService").Stepped:Connect(function()
    if Locking then

        Part.Position = game.Players[TargetPlayer].Character.HumanoidRootPart.Position
    else
        Part.CFrame = CFrame.new(0, -9999, 0)

    end
end)

local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(
    function(keygo, ok)
        if (not ok) then
            if (keygo.KeyCode == getgenv().Key) then
                if getgenv().loltoggle then
                    Locking = not Locking
                    if Locking then
                        Plr = getClosestPlayerToCursor()
                        getgenv().targetenabledV3 = true
                        if getgenv().Notificationmode then
        		Notify({
  					Description = "Targeted : "..tostring(Plr.Character.Humanoid.DisplayName);
					Title = "Reticle Private";
					Duration = 3;
					
                })
                        end
                        if getgenv().ViewMode == true then
                            game.Workspace.CurrentCamera.CameraSubject = Plr.Character
                        end
                        if getgenv().ChatMode == true then
                            local A_3 = "Target : "..Plr.DisplayName
                            local A_4 = "All"
                            local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                            Event:FireServer(A_3, A_4)
                        end
                        if getgenv().TPToPlayer == true then
                            LocalPlayer.Character.HumanoidRootPart.CFrame = Plr.Character.HumanoidRootPart.CFrame
                        end
                        if getgenv().BenMode == true then
                            sound:Play()
                        end
                        
                           
                       if getgenv().TargetStrafeV3 == true then
                            local i = 0
                            BindToSteppedold("TargetStrafev3", nil, function(dt)
                            i = (i + dt/getgenv().TSV3Multiplier) % 1
                            local alpha = 2 * math.pi * i
                
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.Angles(0, alpha, 0)
                            * CFrame.new(0, 0, getgenv().TSV3Distance)
                            + Plr.Character.HumanoidRootPart.Position
                        end)
                        end
                    elseif not Locking then
                        UnbindFromSteppedold("TargetStrafev3")

                        if getgenv().Notificationmode then
                                       		Notify({
  					Description = "Untargeted";
					Title = "Reticle Private";
					Duration = 3;
					
                })
                        end
                        if getgenv().ViewMode == true then
                            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                        end
                        
                        if getgenv().ChatMode == true then
                            local A_1 = "Untargeted"
                            local A_2 = "All"
                            local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                            Event:FireServer(A_1, A_2)
                        end
                        if getgenv().BenMode == true then
                            sound1:Play()
                        end
                    end
                end
            end
        end
    end
)
RunService.Heartbeat:Connect(function()
    if getgenv().LookAt == true then
        local Char = game.Players.LocalPlayer.Character
        local PrimaryPartOfChar = game.Players.LocalPlayer.Character.PrimaryPart
        local NearestChar = Plr.Character
        local NearestRoot = Plr.Character.HumanoidRootPart
        local NearestPos = CFrame.new(PrimaryPartOfChar.Position, Vector3.new(NearestRoot.Position.X, NearestRoot.Position.Y, NearestRoot.Position.Z))
        Char:SetPrimaryPartCFrame(NearestPos)
    else
        local Char = game.Players.LocalPlayer.Character
        local PrimaryPartOfChar = game.Players.LocalPlayer.Character.PrimaryPart
        local NearestChar = LocalPlayer.Character
        local NearestRoot = LocalPlayer.Character.HumanoidRootPart
        local NearestPos = CFrame.new(PrimaryPartOfChar.Position, Vector3.new(NearestRoot.Position.X, NearestRoot.Position.Y, NearestRoot.Position.Z))
        Char:SetPrimaryPartCFrame(LocalPlayer)
    end
end)
function getClosestPlayerToCursor()
    local closestPlayer
    local shortestDistance = 137

    for i, v in pairs(game.Players:GetPlayers()) do
        if
            v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                v.Character.Humanoid.Health ~= 0 and
                v.Character:FindFirstChild("LowerTorso")
         then
            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end

local rawmetatable = getrawmetatable(game)
local old = rawmetatable.__namecall
setreadonly(rawmetatable, false)
rawmetatable.__namecall =
    newcclosure(
    function(...)
        local args = {...}
        if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
            args[3] =
                Plr.Character[getgenv().Partz].Position + (Plr.Character[getgenv().Partz].Velocity * Prediction / 10)
            return old(unpack(args))
        end
        return old(...)
    end
)

getgenv().OldAimPart = "LowerTorso"
getgenv().AimPart = "LowerTorso" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}
getgenv().AimlockKey = "x"
getgenv().AimRadius = 30 -- How far away from someones character you want to lock on at
getgenv().ThirdPerson = true
getgenv().FirstPerson = true
getgenv().TeamCheck = false -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed
getgenv().PredictionVelocity = 1.35
getgenv().CheckIfJumped = false
getgenv().Smoothness = false
getgenv().SmoothnessAmount = 0.0365
getgenv().lockautosetup = false
getgenv().airshotbonee = "RightFoot"
local Players, Uis, RService, SGui =
    game:GetService "Players",
    game:GetService "UserInputService",
    game:GetService "RunService",
    game:GetService "StarterGui"
local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 =
    Players.LocalPlayer,
    Players.LocalPlayer:GetMouse(),
    workspace.CurrentCamera,
    CFrame.new,
    Ray.new,
    Vector3.new,
    Vector2.new
local Aimlock, MousePressed, CanNotify = false, false, false
local AimlockTarget
local OldPre

getgenv().WorldToViewportPoint = function(P)
    return Camera:WorldToViewportPoint(P)
end

getgenv().WorldToScreenPoint = function(P)
    return Camera.WorldToScreenPoint(Camera, P)
end

getgenv().GetObscuringObjects = function(T)
    if T and T:FindFirstChild(getgenv().AimPart) and Client and Client.Character:FindFirstChild("Head") then
        local RayPos = workspace:FindPartOnRay(RNew(T[getgenv().AimPart].Position, Client.Character.Head.Position))
        if RayPos then
            return RayPos:IsDescendantOf(T)
        end
    end
end

getgenv().GetNearestTarget = function()
    -- Credits to whoever made this, i didnt make it, and my own mouse2plr function kinda sucks
    local players = {}
    local PLAYER_HOLD = {}
    local DISTANCES = {}
    for i, v in pairs(Players:GetPlayers()) do
        if v ~= Client then
            table.insert(players, v)
        end
    end
    for i, v in pairs(players) do
        if v.Character ~= nil then
            local AIM = v.Character:FindFirstChild("Head")
            if getgenv().TeamCheck == true and v.Team ~= Client.Team then
                local DISTANCE =
                    (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY =
                    Ray.new(
                    game.Workspace.CurrentCamera.CFrame.p,
                    (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE
                )
                local HIT, POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist = DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
            elseif getgenv().TeamCheck == false and v.Team == Client.Team then
                local DISTANCE =
                    (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY =
                    Ray.new(
                    game.Workspace.CurrentCamera.CFrame.p,
                    (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE
                )
                local HIT, POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist = DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
            end
        end
    end

    if unpack(DISTANCES) == nil then
        return nil
    end

    local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
    if L_DISTANCE > getgenv().AimRadius then
        return nil
    end

    for i, v in pairs(PLAYER_HOLD) do
        if v.diff == L_DISTANCE then
            return v.plr
        end
    end
    return nil
end

Mouse.KeyDown:Connect(
    function(a)
        if not (Uis:GetFocusedTextBox()) then
            if a == AimlockKey and AimlockTarget == nil then
                pcall(
                    function()
                        if MousePressed ~= true then
                            MousePressed = true
                        end
                        local Target
                        Target = GetNearestTarget()
                        if Target ~= nil then
                            AimlockTarget = Target
                        end
                    end
                )
            elseif a == AimlockKey and AimlockTarget ~= nil then
                if AimlockTarget ~= nil then
                    AimlockTarget = nil
                end
                if MousePressed ~= false then
                    MousePressed = false
                end
            end
        end
    end
)

local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

_G.TracerVisible = false
_G.TracerColor = Color3.fromRGB(0,255,255)
_G.TracerThickness = 1
_G.TracerTransparency = 1

_G.CircleSides = 3604
_G.CircleColor = Color3.fromRGB(0,255,255)
_G.CircleTransparency = 0.5
_G.CircleRadius = 80
_G.CircleFilled = false
_G.CircleVisible = false
_G.CircleThickness = 0

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255,0,127)
circle.Thickness = 0.1
circle.Transparency = 0.5
circle.NumSides = 64
circle.Radius = 64
circle.Visible = false
circle.Filled = true
getgenv().autoclick = false
game:GetService("RunService").RenderStepped:Connect(
    function()
        if getgenv().autosetup == true then
            local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
            local split = string.split(pingvalue, " ")
            local ping = split[1]
            if tonumber(ping) < 30 then
                getgenv().Prediction = 1.14
            elseif tonumber(ping) <= 30 then
                if tonumber(ping) < 40 then
                    getgenv().Prediction = 1.16
                elseif tonumber(ping) <= 40 then
                    if tonumber(ping) < 50 then
                        getgenv().Prediction = 1.19
                    elseif tonumber(ping) <= 50 then
                        if tonumber(ping) < 70 then
                            getgenv().Prediction = 1.22
                        elseif tonumber(ping) <= 80 then
                            getgenv().Prediction = 1.38
                        elseif tonumber(ping) <= 80 then
                            getgenv().Prediction = 1.39
                        elseif tonumber(ping) <= 90 then
                            getgenv().Prediction = 1.42
                        elseif tonumber(ping) <= 150 then
                            getgenv().Prediction = 1.51
                        elseif tonumber(ping) >= 200 then
                            getgenv().Prediction = 1.69
                        end
                    end
                end
            end
        end

        circle.Position =
            Vector2.new(
            game:GetService("UserInputService"):GetMouseLocation().X,
            game:GetService("UserInputService"):GetMouseLocation().Y
        )
        circle.Radius = _G.CircleRadius
        circle.Filled = _G.CircleFilled
        circle.Color = _G.CircleColor
        circle.Visible = _G.CircleVisible
        circle.Radius = _G.CircleRadius
        circle.Transparency = _G.CircleTransparency
        circle.NumSides = _G.CircleSides
        circle.Thickness = _G.CircleThickness
        Tracer.Visible = _G.TracerVisible
        Tracer.Color = _G.TracerColor
        Tracer.Thickness = _G.TracerThickness
        Tracer.Transparency = _G.TracerTransparency
        if getgenv().AirshotFunccc == true then
            if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "RightFoot"
            else
                Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(
                    function(old, new)
                        if new == Enum.HumanoidStateType.Freefall then
                            getgenv().Partz = "RightFoot"
                        else
                            getgenv().Partz = "LowerTorso"
                        end
                    end
                )
            end
        end

        if getgenv().Tracer == true and Locking then
            local Vector, OnScreen =
                cc:worldToViewportPoint(
                Plr.Character[getgenv().Partz].Position + (Plr.Character[getgenv().Partz].Velocity * Prediction / 10)
            )
            Tracer.Visible = true
            Tracer.From = Vector2.new(mouse.X, mouse.Y + ggi(gs).Y)
            Tracer.To = Vector2.new(Vector.X, Vector.Y)
        elseif getgenv().Tracer == false then
            Tracer.Visible = false
        end
        local CAimPart = AimlockTarget ~= nil and
            table.unpack(
            {
                AimlockTarget.Character.Humanoid.Jumping == true and AimlockTarget.Character[getgenv().airshotbonee] or
                    AimlockTarget.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and
                        AimlockTarget.Character[getgenv().airshotbonee] or
                    AimlockTarget.Character[getgenv().AimPart]
            }
        )
        if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then
            if
                (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 or
                    (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1
             then
                CanNotify = true
            else
                CanNotify = false
            end
        elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then
            if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then
                CanNotify = true
            else
                CanNotify = false
            end
        elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then
            if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then
                CanNotify = true
            else
                CanNotify = false
            end
        end
        if Aimlock == true and MousePressed == true then
            if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(getgenv().AimPart) then
                if getgenv().FirstPerson == true then
                    if CanNotify == true then
                        if getgenv().PredictMovement == true then
                            if getgenv().Smoothness == true then
                                --// The part we're going to lerp/smoothen \\--
                                local Main =
                                    CF(Camera.CFrame.p, CAimPart.Position + CAimPart.Velocity * PredictionVelocity / 10)

                                --// Making it work \\--
                                Camera.CFrame =
                                    Camera.CFrame:Lerp(
                                    Main,
                                    getgenv().SmoothnessAmount,
                                    Enum.EasingStyle.Elastic,
                                    Enum.EasingDirection.InOut
                                )
                            else
                                Camera.CFrame =
                                    CF(Camera.CFrame.p, CAimPart.Position + CAimPart.Velocity * PredictionVelocity / 10)
                            end
                        elseif getgenv().PredictMovement == false then
                            if getgenv().Smoothness == true then
                                --// The part we're going to lerp/smoothen \\--
                                local Main = CF(Camera.CFrame.p, CAimPart.Position)

                                --// Making it work \\--
                                Camera.CFrame =
                                    Camera.CFrame:Lerp(
                                    Main,
                                    getgenv().SmoothnessAmount,
                                    Enum.EasingStyle.Elastic,
                                    Enum.EasingDirection.InOut
                                )
                            else
                                Camera.CFrame = CF(Camera.CFrame.p, CAimPart.Position)
                            end
                        end
                    end
                end
            end
        end
        if CheckIfJumped == true then
            if AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().AimPart = getgenv().airshotbonee
            else
                getgenv().AimPart = getgenv().OldAimPart
            end
        end

        if getgenv().autoclick then
            mouse1click()
            mouse1release()
        end
    end
)



getgenv().cframespeedtoggle = false
getgenv().speedvalue = 0.35
getgenv().Spinbot = false
getgenv().Jitter = false
getgenv().Layspinbot = false
getgenv().AntiAim1 = false
getgenv().AntiAim2 = false
getgenv().antistomplo = false
getgenv().autoreload = false
getgenv().autostomp = false
getgenv().antibag = false
getgenv().trashtalkl = false
getgenv().antilock = false
getgenv().antilockspeed = 0.260319
getgenv().DesyncEnabled = false
getgenv().DesyncVelocity = 15
getgenv().BenMode = false
getgenv().TPToPlayer = false
getgenv().LookAt = false
getgenv().Jitter = false
getgenv().RotationSpeed = 250 
getgenv().VectorSpeed = 250 
getgenv().AntiAimHeight = 1
getgenv().TSV3Multiplier = 10000
getgenv().TSV3Distance = 5
getgenv().cfskey = z


getgenv().loopzzs = true

--
    local userInput = game:service('UserInputService')
    local runService = game:service('RunService')
 
    userInput.InputBegan:connect(function(Key)
        if Key.KeyCode == getgenv().cfskey then
            Enabled = not Enabled
            if Enabled == true then
                repeat
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().Multiplier
                    runService.Stepped:wait()
                until Enabled == false
            end
        end
    end)
    
local Jit = math.random(30, 90)
local Angle = 60
_G.Save0 = game.Players.LocalPlayer.Character.Head.face.Texture
_G.Save1 = game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId
_G.Save2 = game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId
_G.Save3 = game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId

game:GetService("RunService").Heartbeat:Connect(
    function()
        if cframespeedtoggle == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                game.Players.LocalPlayer.Character.Humanoid.MoveDirection * speedvalue
        end
        if Spinbot then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(555), 0)
        end
        if Jitter then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
                CFrame.Angles(0, math.rad(Angle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0)
        end



if AntiAim1 then
           game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * getgenv().VectorSpeed
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(getgenv().RotationSpeed), 0)
end

        if AntiAim2 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().AntiAimHeight, 0)
            wait(0.2)
        end
        if getgenv().antistomplo then
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v:Destroy()
                    end
                end
            end
        end
               if getgenv().DesyncEnabled then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * getgenv().DesyncVelocity
                game:GetService("RunService").Heartbeat:Wait()
        end
        if getgenv().AutoReloadx then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                if
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                        "Ammo"
                    )
                 then
                    if
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild(
                            "Ammo"
                        ).Value <= 0
                     then
                        game:GetService("ReplicatedStorage").MainEvent:FireServer(
                            "Reload",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
                        )
                    end
                end
            end
        end
        if getgenv().autostomp then
            game.ReplicatedStorage.MainEvent:FireServer("Stomp")
        end
        if getgenv().antibag then
            game.Players.LocalPlayer.Character["Christmas_Sock"]:Destroy()
        end
        if getgenv().antilock then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().antilockspeed
        end
            if getgenv().DesyncEnabled then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * getgenv().DesyncVelocity
                game:GetService("RunService").Heartbeat:Wait()
        end
    end
)

getgenv().negativeamount = -5
getgenv().positiveamount = 5

local BulletTracers = false

getgenv().flightzenable = false
getgenv().flightz = false
getgenv().flightzkey = "t"
getgenv().flightzspeed = 100

repeat wait() until game.Players.LocalPlayer.Character

local plr = game.Players.LocalPlayer
local char = plr.Character
local Torso = char:WaitForChild("LowerTorso")
local Mouse = plr:GetMouse()
Mouse.KeyDown:Connect(function(key)
    if key == getgenv().flightzkey then
        if getgenv().flightz == false then
            getgenv().flightz = true
            local BV = Instance.new("BodyVelocity",Torso)
            BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge,math.huge)
            while getgenv().flightz and getgenv().flightzenable == true do
                BV.Velocity = Mouse.Hit.lookVector*getgenv().flightzspeed
                wait()
                end
        end
        if getgenv().flightz == true then
            getgenv().flightz = false
            Torso:FindFirstChildOfClass("BodyVelocity"):remove()
            end
        end
end)

getgenv().empzvelocity = -50
getgenv().hipzheight = 4

local AbyssSettings = {
    Loaded = false,
    Target = {
        UseMouseNearest = "Mouse",
        WallCheck = false,
        Grabbed = false,
        Knocked = false,
        UseOldWallCheck = false,
        UseNewWallCheck = true
    },
    TargetStrafe = {
        Enabled = false,
        Controllable = false,
        AutoJump = false,
        Range = 10,
        Distance = 5,
        Speed = 4,
        InfRange = false,
        TargetOnly = false,
        HoldSpace = false,
        ShowRotationRange = false
    },
    Speed = {
        Enabled = false,
        Motion = false,
        BHop = false,
        Amount = 1
    },
    Strafe = {
        Enabled = false
    },
    NoJumpCd = {
        Enabled = false
    },
    Fly = {
        Enabled = false,
        Normal = true,
        Height = 35,
        MoveOnly = false,
        Amount = 1
    },
    SilentAim = {
        Enabled = false,
        CustomPrediction = false,
        PredictionAmount = 0.165,
        SilentRotation = false,
        UseRange = false,
        Range = 15,
        ForceHead = "LowerTorso",
        DrawingCircle = false,
        DrawingCircleSize = 100,
        NearestDistanceBehindCheck = false
    },
    Disabler = {
        CFrameDetection = false,
        Ban = false,
        Crash = false
    },
    NoRotation = {
        Enabled = false
    },
    NoSlow = {
        Enabled = false,
        GunOnly = false
    },
    AutoHeal = {
        Enabled = false,
        HealthBelow = 80
    },
    MotionBlur = {
        Enabled = false,
        BlurAmount = 50
    },
    TargetGui = {
        Enabled = false
    },
    Watermark = {
        Enabled = false
    },
    FPSBoost = {
        Enabled = false
    },
    LagDetector = {
        Enabled = false
    },
    SpeedGlitch = {
        Enabled = false,
        SpeedMultiplier = 8
    }
}

local AbyssStorage = {
    GetStrafeAngle = 0,
    BHoping = false,
    Side = "Right",
    StoredRange = 10,
    HeldSpace = false,
    GetPrediction = 0.165,
    Instance = {},
    Equipable = false,
    FPSBeat = 0,
    GetTime = 0,
    Macro = false
}


local Service = setmetatable({}, {
    __index = function(t, k)
        return game:GetService(k)
    end
})

local RunService = Service.RunService
local Players = Service.Players
local LocalPlayer = Players.LocalPlayer
local UIs = Service.UserInputService
local TweenService = Service.TweenService
local CurrentCamera = workspace.CurrentCamera
local WorldToViewPortPoint = CurrentCamera.WorldToViewportPoint
local WorldToScreenPoint = CurrentCamera.WorldToScreenPoint
local Mouse = LocalPlayer:GetMouse()
local CoreGui = Service.CoreGui
local Last = CurrentCamera.CFrame.lookVector
local Blur = Instance.new("BlurEffect", CurrentCamera)
Blur.Size = 0
local GuiInset = Service.GuiService:GetGuiInset()
local Stats = Service.Stats.Network.ServerStatsItem["Data Ping"]
local ReplicatedStorage = Service.ReplicatedStorage

if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(gui)
        gui.Parent = CoreGui
    end
end

local MainGui = Instance.new("ScreenGui")
MainGui.Name = "VaultsUI"
MainGui.Parent = CoreGui
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
syn.protect_gui(MainGui)

local DrawingFunctions = {
    NewLine = function(Thickness)
        local Line = Drawing.new("Line")
        Line.Visible = true
        Line.Color = Color3.fromRGB(0, 255, 255)
        Line.Thickness = 1
        Line.Transparency = 1
        Line.ZIndex = 2
        
        local OutLine = Drawing.new("Line")
        OutLine.Visible = true
        OutLine.Color = Color3.fromRGB(0, 0, 0)
        OutLine.Thickness = 4
        OutLine.Transparency = 1
        OutLine.ZIndex = 1
        return Line, OutLine
    end,
    NewCircle = function()
        local Circle = Drawing.new("Circle")
        Circle.Transparency = 1
        Circle.Thickness = 1
        Circle.ZIndex = 2
        Circle.Visible = true
        Circle.Color = Color3.fromRGB(0, 255, 255)
        Circle.NumSides = 100

        local OutLine = Drawing.new("Circle")
        OutLine.Visible = true
        OutLine.Color = Color3.fromRGB(0, 0, 0)
        OutLine.Transparency = 1
        OutLine.Thickness = 4
        OutLine.ZIndex = 1
        OutLine.NumSides = 100
        return Circle, OutLine
    end
}

local Line1, OutLine1
local Line2, OutLine2
local Line3, OutLine3
local Line4, OutLine4
local Line5, OutLine5
local Line6, OutLine6
local Line7, OutLine7
local Line8, OutLine8

local DrawingCircle, OutlineDrawingCircle = DrawingFunctions.NewCircle(1)

if not Optimized then
    Line1, OutLine1 = DrawingFunctions.NewLine()
    Line2, OutLine2 = DrawingFunctions.NewLine()
    Line3, OutLine3 = DrawingFunctions.NewLine()
    Line4, OutLine4 = DrawingFunctions.NewLine()
    Line5, OutLine5 = DrawingFunctions.NewLine()
    Line6, OutLine6 = DrawingFunctions.NewLine()
    Line7, OutLine7 = DrawingFunctions.NewLine()
    Line8, OutLine8 = DrawingFunctions.NewLine()
end

local IsNetwork = function(GetPlayer)
    return GetPlayer and GetPlayer.Character and GetPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil and GetPlayer.Character:FindFirstChild("Humanoid") ~= nil and GetPlayer.Character:FindFirstChild("Head") ~= nil and true or false
end

local AbyssFunctions = {
    TargetStrafe = function(IsAutoJump, IsControllable, GetSpeed, GetDistance, GetEnemy)
        if IsControllable then
            if AbyssStorage.Side == "Right" then
                AbyssStorage.GetStrafeAngle = AbyssStorage.GetStrafeAngle + GetSpeed
            else
                AbyssStorage.GetStrafeAngle = AbyssStorage.GetStrafeAngle - GetSpeed
            end
        else
            if AbyssStorage.GetStrafeAngle > 360 then
                AbyssStorage.GetStrafeAngle = 0
            else
                AbyssStorage.GetStrafeAngle = AbyssStorage.GetStrafeAngle + GetSpeed
            end
        end
        LocalPlayer.Character.HumanoidRootPart.CFrame = GetEnemy.CFrame * CFrame.Angles(0, math.rad(AbyssStorage.GetStrafeAngle), 0) * CFrame.new(0, 0, GetDistance)
    end,
    NearestDistance = function()
        local Target = nil
        local Distance = math.huge
        
        for i, v in next, Players:GetPlayers() do
            if v ~= LocalPlayer and IsNetwork(LocalPlayer) and IsNetwork(v) then
                local DistanceFromPlayer = (v.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                local RootPosition, RootVisible = CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                if (not AbyssSettings.Target.NearestDistanceBehindCheck or RootVisible) then
                    if Distance > DistanceFromPlayer then
                        Target = v
                        Distance = DistanceFromPlayer
                    end
                end
            end
        end
    
        return Target, Distance
    end,
    NearestMouse = function()
        local Target = nil
        local Distance = math.huge
    
        for i, v in next, Players:GetPlayers() do
            if v ~= LocalPlayer and IsNetwork(LocalPlayer) and IsNetwork(v) then
                local RootPosition, RootVisible = CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                local DistanceFromMouse = (Vector2.new(RootPosition.X, RootPosition.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                if RootVisible and Distance > DistanceFromMouse then
                    Target = v
                    Distance = DistanceFromMouse
                end
            end
        end
    
        return Target, Distance
    end,
    ToScreen = function(Point)
        local ScreenPosition, InScreen = WorldToViewPortPoint(CurrentCamera, Point)
    
        return Vector2.new(ScreenPosition.X, ScreenPosition.Y), ScreenPosition, InScreen
    end,
    GetVertices = function(BasePos, Multipler)
        local Size = Vector3.new(1, 1, 1) * Multipler
        local Vertices = {}
        
        Vertices.Top = BasePos + Vector3.new(0, 0, Size.Z)
        Vertices.Bottom = BasePos + Vector3.new(0, 0, -Size.Z)
        Vertices.Right = BasePos + Vector3.new(-Size.X, 0, 0)
        Vertices.Left = BasePos + Vector3.new(Size.X, 0, 0)
        
        Vertices.Corner1 = BasePos + (Vector3.new(0, 0, Size.Z) + Vector3.new(-Size.Z, 0, 0)) / 1.5
        Vertices.Corner3 = BasePos + (Vector3.new(0, 0, -Size.Z) + Vector3.new(Size.Z, 0, 0)) / 1.5
        Vertices.Corner4 = BasePos + (Vector3.new(Size.X, 0, 0) + Vector3.new(0, 0, Size.Z)) / 1.5
        Vertices.Corner2 = BasePos + (Vector3.new(-Size.X, 0, 0) + Vector3.new(0, 0, -Size.Z)) / 1.5
        
        return Vertices
    end,
    Notify = function(Desc, Delay, Type)
        local NovoIntentNotification = Instance.new("Frame")
        local Name = Instance.new("TextLabel")
        local Description = Instance.new("TextLabel")
        local Warnning = Instance.new("ImageButton")
        local Line = Instance.new("Frame")
        local Info = Instance.new("ImageButton")
        
        NovoIntentNotification.Name = "NovoIntent"
        NovoIntentNotification.Parent = MainGui
        NovoIntentNotification.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        NovoIntentNotification.BackgroundTransparency = 0.2
        NovoIntentNotification.BorderSizePixel = 0
        NovoIntentNotification.Position = UDim2.new(1, 5, 0, 50)
        NovoIntentNotification.Size = UDim2.new(0, 400, 0, 65)
        
        Name.Name = "Name"
        Name.Parent = NovoIntentNotification
        Name.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
        Name.BackgroundTransparency = 1.000
        Name.Position = UDim2.new(0.154267296, 0, 0.12849167, 0)
        Name.Size = UDim2.new(0, 287, 0, 14)
        Name.Font = Enum.Font.Roboto
        Name.Text = "Reticle v1.0.0"
        Name.TextColor3 = Color3.fromRGB(255, 255, 255)
        Name.TextScaled = true
        Name.TextSize = 16.000
        Name.TextWrapped = true
        Name.TextXAlignment = Enum.TextXAlignment.Left
        
        Description.Name = "Description"
        Description.Parent = NovoIntentNotification
        Description.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
        Description.BackgroundTransparency = 1.000
        Description.Position = UDim2.new(0.153999954, 0, 0.430000156, 0)
        Description.Size = UDim2.new(0, 295, 0, 19)
        Description.Font = Enum.Font.Roboto
        Description.Text = Desc .. " (" .. Delay .. "s)"
        Description.TextColor3 = Color3.fromRGB(255, 255, 255)
        Description.TextSize = 16.000
        Description.TextXAlignment = Enum.TextXAlignment.Left
        
        Warnning.Name = "Warnning"
        Warnning.Parent = NovoIntentNotification
        Warnning.BackgroundTransparency = 1.000
        Warnning.LayoutOrder = 2
        Warnning.Position = UDim2.new(0.0389830507, 0, 0.183081031, 0)
        Warnning.Size = UDim2.new(0, 32, 0, 32)
        Warnning.ZIndex = 2
        Warnning.Image = "rbxassetid://3926305904"
        Warnning.ImageRectOffset = Vector2.new(364, 324)
        Warnning.ImageRectSize = Vector2.new(36, 36)
        if Type == "Warnning" then
            Warnning.Visible = true
        else
            Warnning.Visible = false
        end
        
        Line.Name = "Line"
        Line.Parent = NovoIntentNotification
        Line.AnchorPoint = Vector2.new(1, 0)
        Line.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
        Line.BorderSizePixel = 0
        Line.Position = UDim2.new(0, 0, 0.941999912, 0)
        Line.Size = UDim2.new(0, 0, 0, 3)
        
        Info.Name = "Info"
        Info.Parent = NovoIntentNotification
        Info.BackgroundTransparency = 1.000
        Info.Position = UDim2.new(0.0390000008, 0, 0.182999998, 0)
        Info.Size = UDim2.new(0, 32, 0, 32)
        if Type == "Info" then
            Info.Visible = true
        else
            Info.Visible = false
        end
        Info.ZIndex = 2
        Info.Image = "rbxassetid://3926305904"
        Info.ImageRectOffset = Vector2.new(964, 84)
        Info.ImageRectSize = Vector2.new(36, 36)
        NovoIntentNotification:TweenPosition(UDim2.new(1, -400, 0, 50), "Out", "Sine", 0.35) 
        wait(0.35)
        Line:TweenPosition(UDim2.new(1, 0, 0.941999912, 0), "Out", "Linear", Delay)
        Line:TweenSize(UDim2.new(0, 400, 0, 3), "Out", "Linear", Delay)
        repeat
            Delay = Delay - 0.1
            if 0.1 > Delay then
                Description.Text = Desc .. " (0.0s)"
            else
                Description.Text = Desc .. " (" .. Delay .. "s)"
            end
            wait(0.0925)
        until 0 > Delay
        NovoIntentNotification:TweenPosition(UDim2.new(1, 5, 0, 50), "Out", "Sine", 0.35)
        wait(0.35)
        NovoIntentNotification:Destroy()
    end,
    Knocked = function(GetPlayer)
        if IsNetwork(GetPlayer) then
            return GetPlayer.Character.BodyEffects["K.O"].Value and true or false
        end
        return false
    end,
    Grabbing = function(GetPlayer)
        if IsNetwork(GetPlayer) then
            return GetPlayer.Character:FindFirstChild("GRABBING_CONSTRAINT") and true or false
        end
        return false
    end,
    Round = function(num, numDecimalPlaces)
        return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
    end,
    CalculateTime = function(GetValue)
        local HoursMul, MinutesMul, SecondsMul = 60 * 60, 60, 1
     
        local ResultHours = math.floor(GetValue / HoursMul)
        GetValue = GetValue - (HoursMul * ResultHours)
        local ResultMinutes = math.floor(GetValue / MinutesMul)
        GetValue = GetValue - (MinutesMul * ResultMinutes)
        local ResultSeconds = GetValue
        return ResultHours, ResultMinutes, ResultSeconds
    end
}

local AbyssMiscFunctions = {
    WallCheck = function(OriginPart, Part)
        if IsNetwork(LocalPlayer) then
            local IgnoreList = {CurrentCamera, LocalPlayer.Character, OriginPart.Parent}
            local Parts = CurrentCamera:GetPartsObscuringTarget(
                {
                    OriginPart.Position, 
                    Part.Position
                },
                IgnoreList
            )
        
            for i, v in pairs(Parts) do
                if v.Transparency >= 0.3 then
                    AbyssStorage.Instance[#AbyssStorage.Instance + 1] = v
                end
        
                if v.Material == Enum.Material.Glass then
                    AbyssStorage.Instance[#AbyssStorage.Instance + 1] = v
                end
            end
        
            return #Parts == 0
        end
        return true
    end,
    CameraCheck = function(GetPosition, IgnoredList)
        if IsNetwork(LocalPlayer) then
            return #CurrentCamera:GetPartsObscuringTarget({LocalPlayer.Character.Head.Position, GetPosition}, IgnoredList) == 0 and true or false
        end
    end,
    NearestType = function(Type)
        if Type == "Distance" then
            return AbyssFunctions.NearestDistance()
        elseif Type == "Mouse" then
            return AbyssFunctions.NearestMouse()
        end
    end
}

local Watermark = Instance.new("Frame")
local AmbientShadow = Instance.new("ImageLabel")
local UmbraShadow = Instance.new("ImageLabel")
local Container = Instance.new("Frame")
local Line = Instance.new("Frame")
local Title = Instance.new("TextLabel")

Watermark.Name = "Watermark"
Watermark.Parent = MainGui
Watermark.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Watermark.BackgroundTransparency = 0.700
Watermark.BorderSizePixel = 0
Watermark.Position = UDim2.new(0.00665557384, 0, 0.0178571437, 0)
Watermark.Size = UDim2.new(0, 320, 0, 32)
Watermark.Visible = false

AmbientShadow.Name = "AmbientShadow"
AmbientShadow.Parent = Watermark
AmbientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
AmbientShadow.BackgroundTransparency = 1.000
AmbientShadow.BorderSizePixel = 0
AmbientShadow.Position = UDim2.new(0.5, 0, 0.476000011, 3)
AmbientShadow.Size = UDim2.new(1, 5, 1, 5)
AmbientShadow.ZIndex = 0
AmbientShadow.Image = "rbxassetid://1316045217"
AmbientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
AmbientShadow.ImageTransparency = 0.500
AmbientShadow.ScaleType = Enum.ScaleType.Slice
AmbientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

UmbraShadow.Name = "UmbraShadow"
UmbraShadow.Parent = Watermark
UmbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
UmbraShadow.BackgroundTransparency = 1.000
UmbraShadow.BorderSizePixel = 0
UmbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
UmbraShadow.Size = UDim2.new(1, 10, 1, 10)
UmbraShadow.ZIndex = 0
UmbraShadow.Image = "rbxassetid://1316045217"
UmbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
UmbraShadow.ImageTransparency = 0.850
UmbraShadow.ScaleType = Enum.ScaleType.Slice
UmbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

Container.Name = "Container"
Container.Parent = Watermark
Container.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Container.BackgroundTransparency = 0.650
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0, 0, 0.0778557062, 0)
Container.Size = UDim2.new(0, 320, 0, 29)
Container.ZIndex = 2

Line.Name = "Line"
Line.Parent = Container
Line.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.00182670204, 0, -0.0621119216, 0)
Line.Size = UDim2.new(0, 320, 0, 3)

Title.Name = "Title"
Title.Parent = Container
Title.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0367155336, 0, 0.238294989, 0)
Title.Size = UDim2.new(0, 310, 0, 16)
Title.Font = Enum.Font.Roboto
Title.Text = "Reticle | Da Hood | 60 fps | 30 ms | 00:00:00"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

local TargetUI = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Container_2 = Instance.new("Frame")
local Line_2 = Instance.new("Frame")
local Profile = Instance.new("ImageButton")
local HealthBorder = Instance.new("Frame")
local HealthBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local HealthText = Instance.new("TextLabel")
local HealthIcon = Instance.new("ImageButton")
local Title_2 = Instance.new("TextLabel")
local ArmorBorder = Instance.new("Frame")
local ArmorBar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ArmorText = Instance.new("TextLabel")
local ArmorIcon = Instance.new("ImageButton")
local UmbraShadow_2 = Instance.new("ImageLabel")
local AmbientShadow_2 = Instance.new("ImageLabel")

TargetUI.Name = "Target UI"
TargetUI.Parent = MainGui
TargetUI.AnchorPoint = Vector2.new(0.5, 0.5)
TargetUI.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TargetUI.BackgroundTransparency = 0.700
TargetUI.BorderSizePixel = 0
TargetUI.Position = UDim2.new(0.504575729, 0, 0.787337661, 0)
TargetUI.Size = UDim2.new(0, 251, 0, 97)
TargetUI.Visible = false

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = TargetUI

Container_2.Name = "Container"
Container_2.Parent = TargetUI
Container_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Container_2.BackgroundTransparency = 0.700
Container_2.BorderSizePixel = 0
Container_2.Position = UDim2.new(0.00973401312, 0, 0.027855942, 0)
Container_2.Size = UDim2.new(0, 248, 0, 94)

Line_2.Name = "Line"
Line_2.Parent = Container_2
Line_2.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Line_2.BorderSizePixel = 0
Line_2.Position = UDim2.new(-0.00261220615, 0, -0.00655640941, 0)
Line_2.Size = UDim2.new(0, 249, 0, 3)

Profile.Name = "Profile"
Profile.Parent = Container_2
Profile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Profile.BackgroundTransparency = 1.000
Profile.Position = UDim2.new(-0.00427350448, 0, 0.0338983051, 0)
Profile.Size = UDim2.new(0, 90, 0, 90)
Profile.AutoButtonColor = false
Profile.Image = "rbxthumb://type=AvatarHeadShot&id=590180069&w=420&h=420"

HealthBorder.Name = "HealthBorder"
HealthBorder.Parent = Container_2
HealthBorder.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
HealthBorder.BackgroundTransparency = 0.500
HealthBorder.BorderSizePixel = 0
HealthBorder.Position = UDim2.new(0.400000006, 0, 0.349999994, 0)
HealthBorder.Size = UDim2.new(0, 135, 0, 22)

HealthBar.Name = "HealthBar"
HealthBar.Parent = HealthBorder
HealthBar.Active = true
HealthBar.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
HealthBar.BorderSizePixel = 0
HealthBar.ClipsDescendants = true
HealthBar.Position = UDim2.new(0.0220597833, 0, -0.0436026901, 0)
HealthBar.Size = UDim2.new(1, 0, 1, 0)

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = HealthBar

HealthText.Name = "HealthText"
HealthText.Parent = HealthBorder
HealthText.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
HealthText.BackgroundTransparency = 1.000
HealthText.Size = UDim2.new(0, 138, 0, 22)
HealthText.Font = Enum.Font.Roboto
HealthText.Text = "100"
HealthText.TextColor3 = Color3.fromRGB(255, 255, 255)
HealthText.TextSize = 20.000

HealthIcon.Name = "HealthIcon"
HealthIcon.Parent = HealthBorder
HealthIcon.BackgroundTransparency = 1.000
HealthIcon.Position = UDim2.new(0.0900000036, 0, 0.119999997, 0)
HealthIcon.Size = UDim2.new(0, 15, 0, 15)
HealthIcon.ZIndex = 2
HealthIcon.Image = "rbxassetid://3926305904"
HealthIcon.ImageRectOffset = Vector2.new(964, 444)
HealthIcon.ImageRectSize = Vector2.new(36, 36)

Title_2.Name = "Title"
Title_2.Parent = Container_2
Title_2.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(0.426879644, 0, 0.0496608652, 0)
Title_2.Size = UDim2.new(0, 132, 0, 25)
Title_2.Font = Enum.Font.Roboto
Title_2.Text = "T_4Q (WetAnimeGirls)"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextScaled = true
Title_2.TextSize = 20.000
Title_2.TextWrapped = true
Title_2.TextXAlignment = Enum.TextXAlignment.Left

ArmorBorder.Name = "ArmorBorder"
ArmorBorder.Parent = Container_2
ArmorBorder.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
ArmorBorder.BackgroundTransparency = 0.500
ArmorBorder.BorderSizePixel = 0
ArmorBorder.Position = UDim2.new(0.400000006, 0, 0.649999976, 0)
ArmorBorder.Size = UDim2.new(0, 135, 0, 22)

ArmorBar.Name = "ArmorBar"
ArmorBar.Parent = ArmorBorder
ArmorBar.BackgroundColor3 = Color3.fromRGB(21, 101, 192)
ArmorBar.BorderSizePixel = 0
ArmorBar.Position = UDim2.new(0.0220597833, 0, -0.0436026901, 0)
ArmorBar.Size = UDim2.new(1, 0, 1, 0)

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = ArmorBar

ArmorText.Name = "ArmorText"
ArmorText.Parent = ArmorBorder
ArmorText.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
ArmorText.BackgroundTransparency = 1.000
ArmorText.Size = UDim2.new(0, 138, 0, 21)
ArmorText.Font = Enum.Font.Roboto
ArmorText.Text = "100"
ArmorText.TextColor3 = Color3.fromRGB(255, 255, 255)
ArmorText.TextSize = 20.000

ArmorIcon.Name = "ArmorIcon"
ArmorIcon.Parent = ArmorBorder
ArmorIcon.BackgroundTransparency = 1.000
ArmorIcon.Position = UDim2.new(0.0900000036, 0, 0.119999997, 0)
ArmorIcon.Size = UDim2.new(0, 15, 0, 15)
ArmorIcon.ZIndex = 2
ArmorIcon.Image = "rbxassetid://3926307971"
ArmorIcon.ImageRectOffset = Vector2.new(164, 284)
ArmorIcon.ImageRectSize = Vector2.new(36, 36)

UmbraShadow_2.Name = "UmbraShadow"
UmbraShadow_2.Parent = TargetUI
UmbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
UmbraShadow_2.BackgroundTransparency = 1.000
UmbraShadow_2.BorderSizePixel = 0
UmbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 6)
UmbraShadow_2.Size = UDim2.new(1, 10, 1, 10)
UmbraShadow_2.ZIndex = 0
UmbraShadow_2.Image = "rbxassetid://1316045217"
UmbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
UmbraShadow_2.ImageTransparency = 0.850
UmbraShadow_2.ScaleType = Enum.ScaleType.Slice
UmbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

AmbientShadow_2.Name = "AmbientShadow"
AmbientShadow_2.Parent = TargetUI
AmbientShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
AmbientShadow_2.BackgroundTransparency = 1.000
AmbientShadow_2.BorderSizePixel = 0
AmbientShadow_2.Position = UDim2.new(0.5, 0, 0.476000011, 3)
AmbientShadow_2.Size = UDim2.new(1, 5, 1, 5)
AmbientShadow_2.ZIndex = 0
AmbientShadow_2.Image = "rbxassetid://1316045217"
AmbientShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
AmbientShadow_2.ImageTransparency = 0.500
AmbientShadow_2.ScaleType = Enum.ScaleType.Slice
AmbientShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)


local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/godware123/lol/main/splix"))()



local window = library:new({textsize = 13,font = Enum.Font.RobotoMono,name = "Reticle Private | Da Hood | v1.0.0",color = Color3.fromRGB(0,255,255)})

local tab = window:page({name = "Main"})
local tab2 = window:page({name = "Misc"})
local tab3 = window:page({name = "Visuals"})

local section1 = tab:section({name = "Bullet Redirection",side = "left",size = 378})
local section2 = tab:section({name = "Silent Bullet Redirection",side = "right",size = 277})
local section3 = tab:section({name = "Tracer",side = "right",size = 106})
local section4 = tab:section({name = "Strafing",side = "right",size = 110})
local section5 = tab:section({name = "Aimlock",side = "left",size = 271})
local section6 = tab:section({name = "Mouse Aimlock",side = "right",size = 156})

local section7 = tab2:section({name = "Gun Grip",side = "right",size = 120})
local section8 = tab2:section({name = "Anti Aim",side = "left",size = 406})
local section9 = tab2:section({name = "Character",side = "right",size = 327})
local section10 = tab2:section({name = "Shopping",side = "right",size = 226})
local section11 = tab2:section({name = "Animating",side = "left",size = 146})
local section12 = tab2:section({name = "Teleports",side = "left",size = 145})


local section13 = tab3:section({name = "Esp",side = "left",size = 105})
local section14 = tab3:section({name = "Chams",side = "right",size = 104})
local section15 = tab3:section({name = "Character",side = "right",size = 104})
local section16 = tab3:section({name = "World",side = "left",size = 164})
local section17 = tab3:section({name = "Bullet Tracers",side = "right",size = 64})
local section18 = tab3:section({name = "Crosshair",side = "left",size = 64})
local section19 = tab3:section({name = "Extras",side = "right",size = 66})

section1:toggle({name = "Toggle",def = false,callback = function(e)
        getgenv().loltoggle = e
end})




section1:keybind({name = "Keybind",def = x,callback = function(e)
        getgenv().Key = e
end})

section1:slider({name = "Redirection Velocity",def = 1.23442, max = 5,min = 0.5,rounding = false,ticking = false,measuring = "",callback = function(e)
      getgenv().Prediction = e
end})

section1:dropdown({name = "Hitbox",def = "Lower Torso",max = 4,options = {"Head","Upper Torso","Torso","Lower Torso","Feet"},callback = function(State)
        if State == "Head" then
            getgenv().Partz = "Head"
                elseif State == "Upper Torso" then
            getgenv().Partz = "UpperTorso"
        elseif State == "Torso" then
            getgenv().Partz = "HumanoidRootPart"
        elseif State == "Lower Torso" then
            getgenv().Partz = "LowerTorso"
        elseif State == "Feet" then
            getgenv().Partz = "RightFoot"
        end
end})

section1:toggle({name = "Auto Setup",def = false,callback = function(e)
        getgenv().autosetup = e
end})

section1:toggle({name = "Notification Mode",def = false,callback = function(e)
        getgenv().Notificationmode = e
end})

section1:toggle({name = "Tracer Mode",def = false,callback = function(e)
        getgenv().Tracer = e
end})

section1:toggle({name = "Speech Mode",def = false,callback = function(e)
        getgenv().ChatMode = e
end})

section1:toggle({name = "Target Rotation",def = false,callback = function(e)
        getgenv().LookAt = e
end})

section1:toggle({name = "Teleport On Target",def = false,callback = function(e)
        getgenv().TPToPlayer = e
end})

section1:toggle({name = "View Target",def = false,callback = function(e)
        getgenv().ViewMode = e
end})


section1:dropdown({name = "Resolver",def = "None",max = 4,options = {"None","Desync","Reversed","Underworld","Slingshot","Swing"},callback = function(State)
        if State == "None" then
         getgenv().Prediction = 1.23442
                     getgenv().Partz = "LowerTorso"
        elseif State == "Reversed" then
          getgenv().Partz = "HumanoidRootPart"
          getgenv().Prediction = -1.23442
                 elseif State == "Desync" then
             getgenv().Partz = "HumanoidRootPart"
            getgenv().Prediction = 0.002
                 elseif State == "Underworld" then
          getgenv().Prediction = 0.2
     getgenv().Partz = "Head"
                      elseif State == "Slingshot" then
              getgenv().Prediction = 0.33
                     getgenv().Partz = "LowerTorso"
                     
                                           elseif State == "Swing" then
              getgenv().Prediction = 0.13
                     getgenv().Partz = "HumanoidRootPart"
     
        end
end})

section4:toggle({name = "Orbit",def = false,callback = function(e)
  getgenv().TargetStrafeV3 = e
end})

section4:slider({name = "Orbit Speed",def = 10000, max = 25000,min = 500,rounding = false,ticking = false,measuring = "",callback = function(e)
    getgenv().TSV3Multiplier = e
end})

section4:slider({name = "Orbit Distance",def = 5, max = 50,min = 0,rounding = false,ticking = false,measuring = "",callback = function(e)
    getgenv().TSV3Distance = e
end})


section1:toggle({name = "Airshot Function",def = false,callback = function(e)
        getgenv().AirshotFunccc = e
end})

section1:dropdown({name = "Airshot Hitbox",def = "Torso",max = 4,options = {"Head","UpperTorso","Torso","Lower Torso","Feet"},callback = function(State)
        if State == "Head" then
            getgenv().airshotpart = "Head"
                 elseif State == "Upper Torso" then
            getgenv().airshotpart = "UpperTorso"
        elseif State == "Torso" then
            getgenv().airshotpart = "HumanoidRootPart"
        elseif State == "Lower Torso" then
            getgenv().airshotpart = "LowerTorso"
        elseif State == "Feet" then
            getgenv().airshotpart = "RightFoot"
        end
end})

section2:toggle({name = "Toggle",def = false,callback = function(State)
    AbyssSettings.SilentAim.Enabled = State
end})

section2:toggle({name = "Custom Velocity",def = false,callback = function(State)
    AbyssSettings.SilentAim.CustomPrediction = State
end})

section2:slider({name = "Redirection Velocity",def = 6, max = 10,min = 0,rounding = false,ticking = false,measuring = "",callback = function(State)
    AbyssSettings.SilentAim.PredictionAmount = tonumber("0.1" .. State)
end})

section2:dropdown({name = "Hitbox",def = "Lower Torso",max = 4,options = {"Head","Upper Torso","Torso","Lower Torso"},callback = function(State)
        if State == "Head" then
            AbyssSettings.SilentAim.ForceHead = "Head"
                elseif State == "Upper Torso" then
            AbyssSettings.SilentAim.ForceHead = "UpperTorso"
        elseif State == "Torso" then
            AbyssSettings.SilentAim.ForceHead = "HumanoidRootPart"
        elseif State == "Lower Torso" then
            AbyssSettings.SilentAim.ForceHead = "LowerTorso"
        end
end})


section2:toggle({name = "Target Rotation",def = false,callback = function(State)
    AbyssSettings.SilentAim.SilentRotation = State
end})

section2:toggle({name = "Target Information",def = false,callback = function(State)
        AbyssSettings.TargetGui.Enabled = State
end})

section2:toggle({name = "Show Drawing FOV",def = false,callback = function(State)
    AbyssSettings.SilentAim.DrawingCircle = State
end})

section2:slider({name = "Drawing FOV Radius",def = 100, max = 500,min = 0,rounding = false,ticking = false,measuring = "",callback = function(State)
    AbyssSettings.SilentAim.DrawingCircleSize = State
end})

section2:toggle({name = "Range Based",def = false,callback = function(State)
    AbyssSettings.SilentAim.UseRange = State
end})

section2:slider({name = "Range Amount",def = 15, max = 5000,min = 2,rounding = false,ticking = false,measuring = "",callback = function(State)
   AbyssSettings.SilentAim.Range = State
end})

section3:slider({name = "Tracer Thickness",def = 1, max = 10,min = 0.1,rounding = false,ticking = false,measuring = "",callback = function(e)
     _G.TracerThickness = e
end})

section3:slider({name = "Tracer Transparency",def = 1, max = 1,min = 0.1,rounding = false,ticking = false,measuring = "",callback = function(e)
        _G.TracerTransparency = e
end})

local picker = section3:colorpicker({name = "Tracer Colour",cpname = nil,def = Color3.fromRGB(0,255,255),callback = function(ep)
        _G.TracerColor = ep
end})

section5:toggle({name = "Toggle",def = false,callback = function(e)
        Aimlock = e
end})

section5:textbox({name = "Keybind",def = "x",placeholder = "",callback = function(e)
        AimlockKey = e
end})

section5:slider({name = "Velocity",def = 1.37, max = 5,min = 0.5,rounding = false,ticking = false,measuring = "",callback = function(e)
        getgenv().PredictionVelocity = e
end})



section5:dropdown({name = "Hitbox",def = "Lower Torso",max = 4,options = {"Head","Upper Torso","Torso","Lower Torso"},callback = function(State)
       if State == "Head" then
            getgenv().AimPart = "Head"
            getgenv().OldAimPart = "Head"
                    elseif State == "Upper Torso" then
            getgenv().AimPart = "UpperTorso"
            Getgenv().OldAimPart = "UpperTorso"
        elseif State == "Torso" then
            getgenv().AimPart = "HumanoidRootPart"
            getgenv().OldAimPart = "HumanoidRootPart"
        elseif State == "Lower Torso" then
            getgenv().AimPart = "LowerTorso"
            Getgenv().OldAimPart = "LowerTorso"
        end
end})


section5:toggle({name = "Airshot Function",def = false,callback = function(e)
        getgenv().CheckIfJumped = e
end})

section5:dropdown({name = "Airshot Hitbox",def = "Lower Torso",max = 4,options = {"Head","Upper Torso","Torso","Lower Torso"},callback = function(State)
        if State == "Head" then
            getgenv().airshotbonee = "Head"
        elseif State == "Upper Torso" then
            getgenv().airshotbonee = "UpperTorso"
                    elseif State == "Torso" then
            getgenv().airshotbonee = "HumanoidRootPart"
        elseif State == "Lower Torso" then
            getgenv().airshotbonee = "LowerTorso"
        end
end})

section5:toggle({name = "Aim Assist",def = false,callback = function(e)
        getgenv().Smoothness = e
end})

section5:slider({name = "Aim Assist Strength",def = 0.0365, max = 1,min = 0.01,rounding = false,ticking = false,measuring = "",callback = function(e)
        getgenv().SmoothnessAmount = e
end})

section6:toggle({name = "Toggle",def = false,callback = function(e)
    
    getgenv().MouseLockEnabled = e 

local CurrentCamera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local Mouse = game.Players.LocalPlayer:GetMouse()
local Plr

function FindClosestPlayer()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
            v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
            local pos = CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end

Mouse.KeyDown:Connect(function(KeyPressed)
    if KeyPressed == (getgenv().Keysz) then
          if getgenv().Enabledz == true then
           getgenv().Enabledz = false
            Plr = FindClosestPlayer()
        elseif getgenv().MouseLockEnabled == true then
            Plr = FindClosestPlayer()
           getgenv().Enabledz = true

        end
    end
end)

RunService.Stepped:connect(function()
    if getgenv().Enabledz == true then
        local Vector = CurrentCamera:WorldToScreenPoint(Plr.Character[getgenv().AimParts].Position +
                                                            (Plr.Character[getgenv().AimParts].Velocity *
                                                                getgenv().Predictions))
        mousemoverel(Vector.X - Mouse.X, Vector.Y - Mouse.Y)
    end

end)

end})

section6:textbox({name = "Keybind",def = "x",placeholder = "",callback = function(e)
       getgenv().Keysz = e
end})

section6:slider({name = "Velocity",def = 0.1235, max = 0.5,min = 0,rounding = false,ticking = false,measuring = "",callback = function(e)
     getgenv().Predictions = e
end})



section6:dropdown({name = "Hitbox",def = "LowerTorso",max = 4,options = {"Head","Upper Torso","Torso","Lower Torso"},callback = function(State)
          if State == "Head" then
            getgenv().AimParts = "Head"
                 elseif State == "Upper Torso" then
            getgenv().AimParts = "UpperTorso"
        elseif State == "Torso" then
            getgenv().AimParts = "HumanoidRootPart"
        elseif State == "Lower Torso" then
            getgenv().AimParts = "LowerTorso"

        end

end})

section7:slider({name = "X",def = 0, max = 5,min = -5,rounding = true,ticking = false,measuring = "",callback = function(x)

    
local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
tool.Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip - Vector3.new(0,x,0)
tool.Parent = game.Players.LocalPlayer.Backpack
tool.Parent = game.Players.LocalPlayer.Character
end})

section7:slider({name = "Y",def = 0, max = 5,min = -5,rounding = true,ticking = false,measuring = "",callback = function(x)
local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
tool.Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip + Vector3.new(x,0,0)
tool.Parent = game.Players.LocalPlayer.Backpack
tool.Parent = game.Players.LocalPlayer.Character
end})

section7:slider({name = "Z",def = 0, max = 5,min = -5,rounding = true,ticking = false,measuring = "",callback = function(x)
local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
tool.Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip + Vector3.new(0,0,x)
tool.Parent = game.Players.LocalPlayer.Backpack
tool.Parent = game.Players.LocalPlayer.Character
end})


section8:toggle({name = "Spinbot",def = false,callback = function(e)
        getgenv().Spinbot = e
end})

section8:toggle({name = "Jitter",def = false,callback = function(e)
       getgenv().Jitter = e
end})


section8:keybind({name = "Cframe Speed",def = false,callback = function(e)
    
 getgenv().cfskey = e
 
    end})
    
    section8:slider({name = "Cframe Amount",def = 0, max = 5,min = 0,rounding = false,ticking = false,measuring = "",callback = function(e)
        getgenv().Multiplier = e
end})





section8:dropdown({name = "Velocity Changers",def = "None",max = 4,options = {"None","Prediction Breaker","Underworld","Insanity","Swing","Slingshot"},callback = function(State)
          if State == "None" then
getgenv().antilock = false
  getgenv().AntiAim1 = false
  getgenv().AntiAim2 = false
          getgenv().loopzzs = false  
                        getgenv().insanityantiaim = false     
          wait(0.1)
          
          game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2
                 elseif State == "Prediction Breaker" then
  getgenv().antilock = true
    getgenv().AntiAim1 = false
  getgenv().AntiAim2 = false
          getgenv().loopzzs = false  
                    getgenv().insanityantiaim = false 
                 wait(0.1)
          game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2
                 elseif State == "Insanity" then
          getgenv().insanityantiaim = true                   
  getgenv().antilock = false
    getgenv().AntiAim1 = false
  getgenv().AntiAim2 = false
          getgenv().loopzzs = false  
                 wait(0.1)
          game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2
          wait(0.01)
          
repeat
    
    wait(0.01)
                
 local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (CFrame.new(Position) + Vector3.new(math.random(getgenv().negativeamount, getgenv().positiveamount), math.random(getgenv().negativeamount, getgenv().positiveamount), math.random(getgenv().negativeamount, getgenv().positiveamount))) * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)))
until getgenv().insanityantiaim == false
          
                 elseif State == "Swing" then
                getgenv().loopzzs = false  
  getgenv().AntiAim1 = true
  getgenv().antilock = false
    getgenv().AntiAim2 = false
                      getgenv().insanityantiaim = false 
           wait(0.1)
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2
    
        elseif State == "Underworld" then
  getgenv().loopzzs = true          
 getgenv().antilock = false
  getgenv().AntiAim1 = false
  getgenv().AntiAim2 = false
                    getgenv().insanityantiaim = false 
            
            repeat
                task.wait()
    local oldvel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldvel.X, getgenv().empzvelocity, oldvel.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldvel.X, oldvel.Y, oldvel.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldvel.X, getgenv().empzvelocity, oldvel.Z)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = getgenv().hipzheight
until getgenv().loopzzs == false
        elseif State == "Slingshot" then
              getgenv().loopzzs = false  
  getgenv().AntiAim1 = false
  getgenv().antilock = false
    getgenv().AntiAim2 = true
                      getgenv().insanityantiaim = false 
       wait(0.1)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2

        end

end})



section8:slider({name = "Prediction Backtrack",def = 0.26, max = 1,min = 0,rounding = false,ticking = false,measuring = "",callback = function(e)
        getgenv().antilockspeed = e
end})

section8:slider({name = "Underworld Velocity",def = -50, max = 0,min = -500,rounding = false,ticking = false,measuring = "",callback = function(e)
        getgenv().empzvelocity = e
end})

section8:slider({name = "Underworld Hip Height",def = 4, max = 10,min = 0,rounding = false,ticking = false,measuring = "",callback = function(e)
        getgenv().hipzheight = e
end})

section8:slider({name = "Insanity Amount",def = 5, max = 10,min = 0,rounding = false,ticking = false,measuring = "",callback = function(e)
        getgenv().positiveamount = e
end})



section8:slider({name = "Swing Amount",def = 260, max = 1000,min = 0,rounding = false,ticking = false,measuring = "",callback = function(e)
        getgenv().RotationSpeed = e
end})

section8:slider({name = "Swing Angle",def = 260, max = 1000,min = 0,rounding = false,ticking = false,measuring = "",callback = function(e)
        getgenv().VectorSpeed = e
end})

section8:slider({name = "Slingshot Value",def = 1, max = 5,min = 0,rounding = false,ticking = false,measuring = "",callback = function(e)
        getgenv().AntiAimHeight = e
end})




 section8:toggle({name = "Anchored Underground",def = false,callback = function(State)
         
    pcall(function()
    
    if State == true then
    
			wait(0.25)
			LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -18, 0)
			wait(0.1)
			
Player:FindFirstChild("HumanoidRootPart").Anchored = true

	
					local player = game.Players.LocalPlayer
                    player.CameraMaxZoomDistance = 100

			
 
 for useless, garbage in next,getgc() do
   if getfenv(garbage).script == game.Players.LocalPlayer.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper and typeof(garbage) == "function" then
       for number, value in next, getconstants(garbage) do
           if tonumber(value) == 0.25 then
               setconstant(garbage,number,0)
           elseif tonumber(value) == 0 then
               setconstant(garbage,number,0.25)
           end
       end
   end
 end
end
end)
			
		if State == false then
		 
Player:FindFirstChild("HumanoidRootPart").Anchored = false

wait(0.01)
		    
			LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 19, 0)

wait(0.1)
local player = game.Players.LocalPlayer
player.CameraMaxZoomDistance = 40



end
end})



section8:toggle({name = "Wallbang",def = false,callback = function(State)
    
    if State == true then 
        
        local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
tool.Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip - Vector3.new(0,27,0)
tool.Parent = game.Players.LocalPlayer.Backpack
tool.Parent = game.Players.LocalPlayer.Character

elseif State == false then
    
    local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
tool.Grip = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip - Vector3.new(0,-27,0)
tool.Parent = game.Players.LocalPlayer.Backpack
tool.Parent = game.Players.LocalPlayer.Character

end

end})


section9:toggle({name = "No Jump Cooldown",def = false,callback = function(State)
       if not game.IsLoaded(game) then 
        game.Loaded.Wait(game.Loaded);
       end
    
    local IsA = game.IsA;
    local newindex = nil 
    
    newindex = hookmetamethod(game, "__newindex", function(self, Index, Value)
        if not checkcaller() and IsA(self, "Humanoid") and Index == "JumpPower" then 
            return
        end
        
        return newindex(self, Index, Value);
    end)
end})

section9:toggle({name = "Bunny Hop",def = false,callback = function(State)
   AbyssSettings.Strafe.Enabled = State
end})

section9:toggle({name = "Anti-Stomp",def = false,callback = function(e)
        getgenv().antistomplo = e
end})
section9:toggle({name = "Anti-Bag",def = false,callback = function(e)
            getgenv().antibag = e
end})
section9:toggle({name = "Auto-Reload",def = false,callback = function(e)
        getgenv().AutoReloadx = e
end})
section9:toggle({name = "Auto-Stomp",def = false,callback = function(e)
        getgenv().autostomp = e
end})

section9:toggle({name = "Anti-Fling",def = false,callback = function(e)
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = e
end})



section9:toggle({name = "Flight",def = false,callback = function(State)
    
  AbyssSettings.Fly.Enabled = State
	  if State == false and AbyssSettings.Loaded then
        if IsNetwork(LocalPlayer) then
            LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 24, 0)
        end
    end
end})

section9:toggle({name = "Move Only",def = false,callback = function(State)
    
   AbyssSettings.Fly.MoveOnly = State
    if State == false and AbyssSettings.Loaded then
        if IsNetwork(LocalPlayer) then
            LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 24, 0)
        end
    end
end})

   section9:slider({name = "Flight Height",def = 35, max = 190,min = 0,rounding = false,ticking = false,measuring = "",callback = function(State)

  AbyssSettings.Fly.Height = State

end})

   section9:slider({name = "Flight Multiplier",def = 1, max = 10,min = 1,rounding = false,ticking = false,measuring = "",callback = function(State)

    AbyssSettings.Fly.Amount = State

end})





   section9:slider({name = "Hip Height",def = 2, max = 250,min = 2,rounding = false,ticking = false,measuring = "",callback = function(e)
 local Player = game.Players.LocalPlayer.Character
Player.Humanoid.HipHeight = e
end})


   section9:slider({name = "Client Lag",def = 0, max = 10,min = 0,rounding = false,ticking = false,measuring = "",callback = function(e)
settings().Network.IncomingReplicationLag = e
end})





section10:dropdown({name = "Auto-Buy",def = "",max = 10,options = {"Revolver", "DB", "SMG", "AK-47", "LMG", "Glock", "Silencer", "RPG", "Flamethrower", "Taser"},callback = function(State)
       if State == "Revolver" then
            plr = game:GetService "Players".LocalPlayer
            local gunName = "[Revolver] - $1300"
            local k = game.Workspace.Ignored.Shop[gunName]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "DB" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "SMG" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[SMG] - $750"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "AK-47" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[AK47] - $2250"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[AK47] - $2250"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[AK47] - $2250"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "LMG" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[LMG] - $3750"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Glock" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Glock] - $500"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Glock] - $500"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Glock] - $500"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Silencer" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Silencer] - $550"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Silencer] - $550"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Silencer] - $550"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "RPG" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[RPG] - $6000"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[RPG] - $6000"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[RPG] - $6000"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Flamethrower" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Flamethrower] - $25000"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Flamethrower] - $25000"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Flamethrower] - $25000"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Taser" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Taser] - $1250"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Taser] - $1250"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Taser] - $1250"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end

end})

section10:dropdown({name = "Auto-Buy Ammo",def = "",max = 10,options = {"Revolver", "DB", "SMG", "AK-47", "LMG", "Glock", "Silencer", "RPG", "Flamethrower", "Taser"},callback = function(State)
       if State == "Revolver" then
            local plr = game:GetService "Players".LocalPlayer
            local gunName = "12 [Revolver Ammo] - $75"
            local k = game.Workspace.Ignored.Shop[gunName]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            
            wait(0.5)
            
                      local plr = game:GetService "Players".LocalPlayer
            local gunName = "12 [Revolver Ammo] - $75"
            local k = game.Workspace.Ignored.Shop[gunName]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                        
            wait(0.5)
            
                      local plr = game:GetService "Players".LocalPlayer
            local gunName = "12 [Revolver Ammo] - $75"
            local k = game.Workspace.Ignored.Shop[gunName]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                        
            wait(0.5)
            
                      local plr = game:GetService "Players".LocalPlayer
            local gunName = "12 [Revolver Ammo] - $75"
            local k = game.Workspace.Ignored.Shop[gunName]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                        
            wait(0.5)
            
                      local plr = game:GetService "Players".LocalPlayer
            local gunName = "12 [Revolver Ammo] - $75"
            local k = game.Workspace.Ignored.Shop[gunName]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                        
            wait(0.5)
            
                      local plr = game:GetService "Players".LocalPlayer
            local gunName = "12 [Revolver Ammo] - $75"
            local k = game.Workspace.Ignored.Shop[gunName]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                        
            wait(0.5)
            
                      local plr = game:GetService "Players".LocalPlayer
            local gunName = "12 [Revolver Ammo] - $75"
            local k = game.Workspace.Ignored.Shop[gunName]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                        
            wait(0.5)
            
                      local plr = game:GetService "Players".LocalPlayer
            local gunName = "12 [Revolver Ammo] - $75"
            local k = game.Workspace.Ignored.Shop[gunName]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "DB" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            
            wait(0.5)
            
                        local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            
                               local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                               local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                               local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                               local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)

        elseif State == "SMG" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            
            wait(0.5)
            
                     plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                      wait(0.5)
            
                     plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                      wait(0.5)
            
                     plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                      wait(0.5)
            
                     plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                      wait(0.5)
            
                     plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "AK-47" then
            plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            
            wait(0.5)
                     plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                 wait(0.5)
                     plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                 wait(0.5)
                     plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                 wait(0.5)
                     plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                 wait(0.5)
                     plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
                 wait(0.5)
                     plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "LMG" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Glock" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Silencer" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "RPG" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Flamethrower" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
end})


section10:dropdown({name = "Auto-Buy Melees",def = "",max = 10,options = {"Knife", "Bat", "Shovel", "Pitchfork", "Stopsign"},callback = function(State)
        if State == "Knife" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Knife] - $150"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Knife] - $150"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Knife] - $150"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Bat" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Bat] - $250"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Bat] - $250"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Bat] - $250"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Shovel" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Shovel] - $320"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Shovel] - $320"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Shovel] - $320"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Pitchfork" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Pitchfork] - $320"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Pitchfork] - $320"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Pitchfork] - $320"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Stopsign" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[StopSign] - $300"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[StopSign] - $300"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[StopSign] - $300"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
end})

section10:dropdown({name = "Auto-Buy Food",def = "",max = 10,options = {"Chicken", "Pizza", "Hotdog", "Taco", "Hamburger", "Donut", "Lettuce"},callback = function(State)
       if State == "Chicken" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Chicken] - $7"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Pizza" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Pizza] - $5"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Hotdog" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[HotDog] - $8"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Taco" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Taco] - $2"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Hamburger" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Hamburger] - $5"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Donut" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Donut] - $5"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Lettuce" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Lettuce] - $5"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
end})



section10:dropdown({name = "Auto-Buy Masks",def = "",max = 10,options = {"Surgeon", "Riot", "Hockey", "Ninja", "Skull", "Paintball", "Breathing"},callback = function(State)
      if State == "Surgeon" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Surgeon Mask] - $25"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Surgeon Mask] - $25"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Surgeon Mask] - $25"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Riot" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Riot Mask] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Riot Mask] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Riot Mask] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Hockey" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Hockey Mask] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Hockey Mask] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Hockey Mask] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Ninja" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Ninja Mask] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Ninja Mask] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Ninja Mask] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Skull" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Skull Mask] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Skull Mask] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Skull Mask] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Paintball" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Paintball Mask] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Paintball Mask] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Paintball Mask] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        elseif State == "Breathing" then
            local plr = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["[Breathing Mask] - $60"]
            local savedsilencerpos = plr.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["[Breathing Mask] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["[Breathing Mask] - $60"].ClickDetector)

            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        end
end})






    
    section11:dropdown({name = "Run",def = "",max = 10,options = {"Zombie","Werewolf","Ninja","Mage","Toy"},callback = function(State)
        if State == "Zombie" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=616163682"
                  game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId =
                "http://www.roblox.com/asset/?id=616163682"    
                
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083216690"
        elseif State == "Ninja" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=656118852"
        elseif State == "Mage" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=707861613"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782842708"
        end
    end})
    
        section11:dropdown({name = "Jump",def = "",max = 10,options = {"Zombie","Werewolf","Ninja","Mage","Toy","OldSchool"},callback = function(State)
       if State == "Zombie" then
            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                "http://www.roblox.com/asset/?id=616161997"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083218792"
        elseif State == "Ninja" then
            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                "http://www.roblox.com/asset/?id=656117878"
        elseif State == "Mage" then
            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                "http://www.roblox.com/asset/?id=707853694"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782847020"
        elseif State == "OldSchool" then
            game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId =
                "http://www.roblox.com/asset/?id=5319841935"
        end
        end})
        
 section11:dropdown({name = "Fall",def = "",max = 10,options = {"Zombie","Werewolf","Ninja","Mage","Toy","OldSchool"},callback = function(State)
       if State == "Zombie" then
            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                "http://www.roblox.com/asset/?id=616157476"
        elseif State == "Werewolf" then
            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                "http://www.roblox.com/asset/?id=1083189019"
        elseif State == "Ninja" then
            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                "http://www.roblox.com/asset/?id=656115606"
        elseif State == "Mage" then
            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                "http://www.roblox.com/asset/?id=707829716"
        elseif State == "Toy" then
            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                "http://www.roblox.com/asset/?id=782846423"
        elseif State == "OldSchool" then
            game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId =
                "http://www.roblox.com/asset/?id=5319839762"
        end
 end})
 
     section12:dropdown({name = "Item Locations",def = "",max = 10,options = {"Admin Base Guns","Admin Base Food","High-Armour"},callback = function(State)
        if State == "Admin Base Guns" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-874.903992, -32.6492004, -525.215698)
              
        elseif State == "Admin Base Food" then
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-788.39318847656, -39.649200439453, -935.27795410156)
       elseif State == "High-Armour" then
      	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-934.73651123047, -28.492471694946, 565.99884033203)

        end
end})
    
    section12:dropdown({name = "Mountains",def = "",max = 10,options = {"Revolver","Double-Barrel","Flank","Uphill","AK","Circus"},callback = function(State)
        if State == "Revolver" then
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-696.847717, 167.674957, -41.0118256, 0.626992583, 7.53169349e-09, -0.779025197, -1.29610933e-09, 1, 8.62493632e-09, 0.779025197, -4.39806902e-09, 0.626992583)
              
        elseif State == "Double-Barrel" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1087.02783, 104.254997, -268.160614, 0.0359299146, -0.000130457382, -0.99935472, -2.87694893e-05, 1, -0.000131575929, 0.99935472, 3.34783836e-05, 0.0359299146)
       elseif State == "Flank" then
            	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(376.730621, 130.748001, -245.620468, 0.996583343, 5.90310174e-06, -0.0825867951, -1.72590728e-06, 1, 5.06508768e-05, 0.0825867951, -5.03353003e-05, 0.996583343)
            	       elseif State == "Uphill" then
      	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(485.651947, 112.5, -644.316833, -0.998899043, 1.33881997e-06, 0.0469136797, 8.00526664e-07, 1, -1.14929126e-05, -0.0469136797, -1.14426994e-05, -0.998899043)
      	           	       elseif State == "AK" then
       	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-658.31897, 80.9998474, -778.077576, -0.142138869, 1.05273443e-08, -0.989845812, 4.51260629e-09, 1, 9.98731764e-09, 0.989845812, -3.04721426e-09, -0.142138869)
       	   	           	       elseif State == "Circus" then
        	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(292.643799, 122.749977, -860.128784, 0.986730993, 5.09704545e-09, 0.162363499, -9.24942123e-10, 1, -2.57716568e-08, -0.162363499, 2.52795154e-08, 0.986730993)
        end
end})

    section12:dropdown({name = "Places",def = "",max = 10,options = {"Bank Tree","Bank Buildings","UFO","AK Bush"},callback = function(State)
        if State == "Bank Tree" then
  	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-374.538391, 102.052887, -440.20871, 0.958144963, 9.24065989e-06, -0.286283433, -9.98981818e-07, 1, 2.89345699e-05, 0.286283433, -2.74375216e-05, 0.958144963)
              
        elseif State == "Bank Buildings" then
   	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-327.583862, 80.4338913, -278.811951, -0.0466220938, -1.94237373e-08, 0.998912573, 1.07243459e-07, 1, 2.44502392e-08, -0.998912573, 1.08266761e-07, -0.0466220938)
       elseif State == "UFO" then
 	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(65.1504517, 138.999954, -691.819031, -0.935115993, -5.9791418e-08, -0.354341775, -3.10840989e-08, 1, -8.67077574e-08, 0.354341775, -7.0067415e-08, -0.935115993)
            	       elseif State == "AK Bush" then
         	local L_419_ = Instance.new("Animation");
	function stopTracks()
		for L_420_forvar0, L_421_forvar1 in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks(
    
        ) do
			if (L_421_forvar1.Animation.AnimationId:match("rbxassetid")) then
				L_421_forvar1:Stop();
			end;
		end;
	end;
	function loadAnimation(L_422_arg0)
		if L_419_.AnimationId == L_422_arg0 then
			L_419_.AnimationId = "1";
		else
			L_419_.AnimationId = L_422_arg0;
			local L_423_ =
                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(
                L_419_
            );
			L_423_:Play();
		end;
	end;
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-626.288757, 7.99984694, -772.322632, -0.997374237, -1.67662592e-10, -0.0724197701, -1.00076274e-10, 1, -9.36886457e-10, 0.0724197701, -9.27178945e-10, -0.997374237)
	loadAnimation("rbxassetid://3152378852");
	wait(1)
	stopTracks();
        end
end})







section13:toggle({name = "Toggle Boxes",def = false,callback = function(e)
        PikaESPSettings.Box = e
end})

section13:toggle({name = "Toggle Names",def = false,callback = function(e)
      PikaESPSettings.Name = e
end})

section13:toggle({name = "Toggle Tracers",def = false,callback = function(e)
      PikaESPSettings.Tracers = e
end})

section13:toggle({name = "Unlock Tracers",def = false,callback = function(e)
    PikaESPSettings.UnlockTracers = e
end})

section14:toggle({name = "Gun Cham",def = false,callback = function(e)
        if e then
            local Client = game.GetService(game, "Players").LocalPlayer
            Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.ForceField
        else
            local Client = game.GetService(game, "Players").LocalPlayer
            Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.Plastic
        end
end})

local picker = section14:colorpicker({name = "Gun Cham Colour",cpname = nil,def = Color3.fromRGB(0,255,255),callback = function(color)
      LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.BrickColor = BrickColor.new(color)
end})


section14:toggle({name = "Body Cham",def = false,callback = function(e)
   if e then
        game.Players.LocalPlayer.Character.LeftHand.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightHand.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftLowerArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightLowerArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftUpperArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightUpperArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftFoot.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightFoot.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightLowerLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.UpperTorso.Material = "ForceField"
        game.Players.LocalPlayer.Character.LowerTorso.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightUpperLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.Head.Material = "ForceField"
    else
        game.Players.LocalPlayer.Character.LeftHand.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightHand.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftLowerArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightLowerArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftUpperArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightUpperArm.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftFoot.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightFoot.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightLowerLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.UpperTorso.Material = "Plastic"
        game.Players.LocalPlayer.Character.LowerTorso.Material = "Plastic"
        game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.RightUpperLeg.Material = "Plastic"
        game.Players.LocalPlayer.Character.Head.Material = "Plastic"
    end
end})

local picker = section14:colorpicker({name = "Body Cham Colour",cpname = nil,def = Color3.fromRGB(0,255,255),callback = function(color)
      LocalPlayer.Character.LeftHand.Color = color
    LocalPlayer.Character.RightHand.Color = color
    LocalPlayer.Character.LeftLowerArm.Color = color
    LocalPlayer.Character.RightLowerArm.Color = color
    LocalPlayer.Character.LeftUpperArm.Color = color
    LocalPlayer.Character.RightUpperArm.Color = color
    LocalPlayer.Character.LeftFoot.Color = color
    LocalPlayer.Character.RightFoot.Color = color
    LocalPlayer.Character.LeftLowerLeg.Color = color
    LocalPlayer.Character.RightLowerLeg.Color = color
    LocalPlayer.Character.UpperTorso.Color = color
    LocalPlayer.Character.LowerTorso.Color = color
    LocalPlayer.Character.LeftUpperLeg.Color = color
    LocalPlayer.Character.RightUpperLeg.Color = color
    LocalPlayer.Character.Head.Color = color
end})


section15:toggle({name = "Super Super Happy Face",def = false,callback = function(e)
        if e then
            game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://494290547"
        else
            game.Players.LocalPlayer.Character.Head.face.Texture = _G.Save0
        end
end})

section15:toggle({name = "Blizzard Beast Mode",def = false,callback = function(e)
        if e then
            game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://209712379"
        else
            game.Players.LocalPlayer.Character.Head.face.Texture = _G.Save0
        end
end})

section15:toggle({name = "Beast Mode",def = false,callback = function(e)
        if e then
            game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://127959433"
        else
            game.Players.LocalPlayer.Character.Head.face.Texture = _G.Save0
        end
end})

section15:toggle({name = "Playful Vampire",def = false,callback = function(e)
        if e then
            game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://2409281591"
        else
            game.Players.LocalPlayer.Character.Head.face.Texture = _G.Save0
        end
end})

section16:slider({name = "Saturation ",def = 0.1, max = 10,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    Light.ColorCorrection.Saturation = value
end})

section16:slider({name = "Fog",def = 500, max = 2000,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    game.Lighting.FogEnd = value
end})


section16:slider({name = "Brightness",def = 1, max = 10,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    Light.Brightness = value
end})

section16:slider({name = "Star Amount",def = 500, max = 100000,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)
    Light.Sky.StarCount = value
end})

section16:colorpicker({name = "World Colour",cpname = nil,def = Color3.fromRGB(0,255,255),callback = function(color)
    Light.Ambient = color
    Light.OutdoorAmbient = color
end})


section17:toggle({name = "Enable Bullet Tracers",def = false,callback = function(e)
        BulletTracers = e
end})

section17:colorpicker({name = "Tracer Colour",cpname = nil,def = Color3.fromRGB(0,255,255),callback = function(e)
        bullet_tracer_color = e
end})

section18:toggle({name = "Draw Crosshair",def = true,callback = function(e)
    	game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Visible = e
	game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Top.Visible = e
	game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Bottom.Visible = e
	game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Right.Visible = e
	game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Left.Visible = e
end})

section18:colorpicker({name = "Crosshair Colour",cpname = nil,def = Color3.fromRGB(0,255,255),callback = function(e)
	game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.BackgroundColor3 = e
	game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Top.BackgroundColor3 = e
	game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Bottom.BackgroundColor3 = e
	game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Right.BackgroundColor3 = e
	game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Left.BackgroundColor3 = e
end})

section19:toggle({name = "Watermark",def = false,callback = function(State)
   AbyssSettings.Watermark.Enabled = State
end})

section19:keybind({name = "Set Ui Keybind",def = nil,callback = function(key)
   window.key = key
end})


            
            
            
            BulletTracers = false
local Services = {
    Players = game:GetService("Players"),
    UserInputService = game:GetService("UserInputService"),
    RunService = game:GetService("RunService"),
}
 
local Local = {
    Player = Services.Players.LocalPlayer,
    Mouse = Services.Players.LocalPlayer:GetMouse(),
}
local Other = {
    Camera = workspace.CurrentCamera,
    BeamPart = Instance.new("Part", workspace)
}

Other.BeamPart.Name = "BeamPart"
Other.BeamPart.Transparency = 1
local Settings = {
    StartColor = 0,255,255,
    EndColor = 0,255,255,
    StartWidth = 3,
    EndWidth = 3,
    ShowImpactPoint = false,
    ImpactTransparency = 0.5,
    ImpactColor = Color3.new(1, 1, 1),
    Time = 1,
}
game:GetService "RunService".Heartbeat:Connect(function()
    if game:GetService("Workspace").Ignored:FindFirstChild 'BULLET_RAYS' and BulletTracers then
        game:GetService("Workspace").Ignored.BULLET_RAYS:Destroy()
    end
end)           
            
            bullet_tracer_color = Color3.fromRGB(0, 255, 255)
function GetGun()
    if game.Players.LocalPlayer.Character then
        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:FindFirstChild 'Ammo' then
                return v
            end
        end
    end
    return nil
end

BulletTracers = false
local Services = {
    Players = game:GetService("Players"),
    UserInputService = game:GetService("UserInputService"),
    RunService = game:GetService("RunService"),
}

local Local = {
    Player = Services.Players.LocalPlayer,
    Mouse = Services.Players.LocalPlayer:GetMouse(),
}
local Other = {
    Camera = workspace.CurrentCamera,
    BeamPart = Instance.new("Part", workspace)
}

Other.BeamPart.Name = "BeamPart"
Other.BeamPart.Transparency = 1
local Settings = {
    StartColor = MainAccentColor,
    EndColor = MainAccentColor,
    StartWidth = 3,
    EndWidth = 3,
    ShowImpactPoint = false,
    ImpactTransparency = 0.5,
    ImpactColor = Color3.new(1, 1, 1),
    Time = 1,
}
game:GetService "RunService".Heartbeat:Connect(function()
    if game:GetService("Workspace").Ignored:FindFirstChild 'BULLET_RAYS' and BulletTracers then
        game:GetService("Workspace").Ignored.BULLET_RAYS:Destroy()
    end
end)
local funcs = {}
Local.Mouse.TargetFilter = Other.BeamPart
function funcs:Beam(v1, v2)
    v2 = Vector3.new(v2.X - 0.1, v2.Y + 0.2, v2.Z)
    local colorSequence = ColorSequence.new({
        ColorSequenceKeypoint.new(0, bullet_tracer_color),
        ColorSequenceKeypoint.new(1, bullet_tracer_color),
    })
    local Part = Instance.new("Part", Other.BeamPart)
    Part.Size = Vector3.new(0, 0, 0)
    Part.Massless = true
    Part.Transparency = 1
    Part.CanCollide = false
    Part.Position = v1
    Part.Anchored = true
    local Attachment = Instance.new("Attachment", Part)
    local Part2 = Instance.new("Part", Other.BeamPart)
    Part2.Size = Vector3.new(0, 0, 0)
    Part2.Transparency = 0
    Part2.CanCollide = false
    Part2.Position = v2
    Part2.Anchored = true
    Part2.Material = Enum.Material.ForceField
    Part2.Color = Settings.ImpactColor
    Part2.Massless = true
    local Attachment2 = Instance.new("Attachment", Part2)
    local Beam = Instance.new("Beam", Part)
    Beam.FaceCamera = true
    Beam.Color = colorSequence
    Beam.Attachment0 = Attachment
    Beam.Attachment1 = Attachment2
    Beam.LightEmission = 6
    Beam.LightInfluence = 1
    Beam.Width0 = Settings.StartWidth
    Beam.Width1 = Settings.EndWidth
    Beam.Texture = "http://www.roblox.com/asset/?id=9150663556"
    Beam.TextureSpeed = 2
    Beam.TextureLength = 1
    delay(Settings.Time, function()
        Part:Destroy()
        Part2:Destroy()
    end)
end

spawn(function()
    while task.wait(0.5) do
        gun = GetGun()
        if gun then
            LastAmmo = gun.Ammo.Value
            gun.Ammo:GetPropertyChangedSignal("Value"):Connect(function()
                if BulletTracers and gun.Ammo.Value < LastAmmo then
                    LastAmmo = gun.Ammo.Value
                    funcs:Beam(gun.Handle.Position, Local.Mouse.hit.p)
                end
            end)
        end
    end
end)

RunService.Heartbeat:Connect(function()
    if AbyssSettings.Watermark.Enabled then
        AbyssStorage.FPSBeat = AbyssStorage.FPSBeat + 1
    end

    if AbyssSettings.MotionBlur.Enabled then
        if not Blur and CurrentCamera:FindFirstChild("Blur") then Instance.new("Blur", CurrentCamera).Size = 0 end
        Blur.Size = math.abs((CurrentCamera.CFrame.lookVector - Last).Magnitude) * AbyssSettings.MotionBlur.BlurAmount
        Last = CurrentCamera.CFrame.lookVector
    end

    if AbyssSettings.SilentAim.DrawingCircle then
        DrawingCircle.Radius = AbyssSettings.SilentAim.DrawingCircleSize
        DrawingCircle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiInset.Y)
        DrawingCircle.Visible = true

        OutlineDrawingCircle.Radius = AbyssSettings.SilentAim.DrawingCircleSize
        OutlineDrawingCircle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiInset.Y)
        OutlineDrawingCircle.Visible = true
    else
        DrawingCircle.Visible = false
        OutlineDrawingCircle.Visible = false
    end

    if IsNetwork(LocalPlayer) then
        if AbyssSettings.SpeedGlitch.Enabled and AbyssStorage.Macro then
            if LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
                LocalPlayer.Character.HumanoidRootPart.Velocity = CurrentCamera.CFrame.lookVector * AbyssSettings.SpeedGlitch.SpeedMultiplier
                if AbyssStorage.Angle == 1 then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(45), 0)
                    AbyssStorage.Angle = 0
                else
                    LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(-45), 0)
                    AbyssStorage.Angle = 1
                end
            end
        end

        if AbyssSettings.AutoHeal.Enabled then
            if LocalPlayer.Character.Humanoid.Health < AbyssSettings.AutoHeal.HealthBelow then
                for i, v in pairs(LocalPlayer.Character:GetChildren()) do
                    if v:FindFirstChild("Eat") or v:FindFirstChild("Drink") then
                        v:Activate()
                    else
                        AbyssStorage.Equipable = true
                    end
                end
            end
            if AbyssStorage.Equipable then
                pcall(function()
                    for i3, v3 in pairs(LocalPlayer.Backpack:GetChildren()) do
                        if v3:FindFirstChild("Eat") or v3:FindFirstChild("Drink") then
                            LocalPlayer.Character.Humanoid:EquipTool(v3)
                            AbyssStorage.Equipable = false
                        end
                    end
                end)
            end
        end

        if AbyssSettings.Speed.Enabled and not AbyssSettings.Fly.Enabled then
            if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                if AbyssSettings.Speed.Motion then
                    LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection * AbyssSettings.Speed.Amount / 1.5)
                end
                if AbyssSettings.Speed.BHop and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
                    LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                end
            end
        end
        if AbyssSettings.SilentAim.Enabled then
            if AbyssSettings.SilentAim.SilentRotation then
                local GetEnemy, GetEnemyPos = AbyssMiscFunctions.NearestType(AbyssSettings.Target.UseMouseNearest)
                if IsNetwork(GetEnemy) then
                    local PrimaryPartOfChar = LocalPlayer.Character.PrimaryPart
                    local TargetRoot = GetEnemy.Character.HumanoidRootPart
                    if GetEnemy.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall or GetEnemy.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping and (not AbyssSettings.Target.Knocked or not AbyssFunctions.Knocked(NearestTarget)) then
                        local NearestPos = CFrame.new(PrimaryPartOfChar.Position, Vector3.new(TargetRoot.Position.X, TargetRoot.Position.Y, TargetRoot.Position.Z))
                        LocalPlayer.Character:SetPrimaryPartCFrame(NearestPos)
                    end
                end
            end
        end

        if AbyssSettings.TargetStrafe.Enabled then
            local GetEnemy, GetEnemyPos = AbyssMiscFunctions.NearestType(AbyssSettings.Target.UseMouseNearest)
            if GetEnemy and GetEnemy.Character and AbyssSettings.TargetStrafe.Range > (LocalPlayer.Character.HumanoidRootPart.Position - GetEnemy.Character.HumanoidRootPart.Position).Magnitude and (not AbyssSettings.Target.Knocked or not AbyssFunctions.Knocked(NearestTarget)) and (not AbyssSettings.TargetStrafe.HoldSpace or AbyssStorage.HeldSpace) then
                if AbyssSettings.TargetStrafe.AutoJump and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
                    LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                end
                AbyssFunctions.TargetStrafe(AbyssSettings.TargetStrafe.AutoJump, AbyssSettings.TargetStrafe.Controllable, AbyssSettings.TargetStrafe.Speed, AbyssSettings.TargetStrafe.Distance, GetEnemy.Character.HumanoidRootPart)
            end
        end

        if not AbyssStorage.Macro then
            if AbyssSettings.NoRotation.Enabled then
                LocalPlayer.Character.Humanoid.AutoRotate = false
            else
                LocalPlayer.Character.Humanoid.AutoRotate = true
            end
        end

        if AbyssSettings.Fly.Enabled and (not AbyssSettings.Fly.MoveOnly or LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0) then
            if AbyssSettings.Fly.Normal then
                local AngleX, AngleY, AngleZ = LocalPlayer.Character.HumanoidRootPart.CFrame:ToEulerAnglesYXZ()
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame.X, AbyssSettings.Fly.Height + 24, LocalPlayer.Character.HumanoidRootPart.CFrame.Z) * CFrame.Angles(AngleX, AngleY, AngleZ)
                LocalPlayer.Character.Humanoid:ChangeState("Freefall")
                LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection * AbyssSettings.Fly.Amount / 1.5)
            end
        end

        if AbyssSettings.Strafe.Enabled then
            if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 and LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and not AbyssSettings.Speed.Enabled then
                LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection / 2.1)
            end
        end

        if not Optimized then
            if AbyssSettings.TargetStrafe.ShowRotationRange then
                local GetEnemy, GetEnemyPos = AbyssMiscFunctions.NearestType(AbyssSettings.Target.UseMouseNearest)
                if GetEnemy then
                    local RootPos = GetEnemy.Character.HumanoidRootPart.Position
                    local Vertices = AbyssFunctions.GetVertices(Vector3.new(RootPos.X, RootPos.Y - 2, RootPos.Z), AbyssSettings.TargetStrafe.Distance)
                    
                    local PointA, z, AVisible = AbyssFunctions.ToScreen(Vertices.Top)
                    local PointB, z, BVisible = AbyssFunctions.ToScreen(Vertices.Corner1)
                    local PointC, z, CVisible = AbyssFunctions.ToScreen(Vertices.Right)
                    local PointD, z, DVisible = AbyssFunctions.ToScreen(Vertices.Corner2)
                    local PointE, z, EVisible = AbyssFunctions.ToScreen(Vertices.Bottom)
                    local PointF, z, FVisible = AbyssFunctions.ToScreen(Vertices.Corner3)
                    local PointG, z, GVisible = AbyssFunctions.ToScreen(Vertices.Left)
                    local PointH, z, HVisible = AbyssFunctions.ToScreen(Vertices.Corner4)
                    
                    if AVisible and BVisible and CVisible and DVisible and EVisible and FVisible and GVisible and HVisible then
                        Line1.From = PointA
                        Line1.To = PointB
                        Line1.Visible = true
                        
                        Line2.From = PointB
                        Line2.To = PointC
                        Line2.Visible = true
                        
                        Line3.From = PointC
                        Line3.To = PointD
                        Line3.Visible = true
                        
                        Line4.From = PointD
                        Line4.To = PointE
                        Line4.Visible = true
                        
                        Line5.From = PointE
                        Line5.To = PointF
                        Line5.Visible = true
                        
                        Line6.From = PointF
                        Line6.To = PointG
                        Line6.Visible = true
                        
                        Line7.From = PointG
                        Line7.To = PointH
                        Line7.Visible = true
                        
                        Line8.From = PointH
                        Line8.To = PointA
                        Line8.Visible = true
                        
                        OutLine1.From = PointA
                        OutLine1.To = PointB
                        OutLine1.Visible = true
                        
                        OutLine2.From = PointB
                        OutLine2.To = PointC
                        OutLine2.Visible = true
                        
                        OutLine3.From = PointC
                        OutLine3.To = PointD
                        OutLine3.Visible = true
                        
                        OutLine4.From = PointD
                        OutLine4.To = PointE
                        OutLine4.Visible = true
                        
                        OutLine5.From = PointE
                        OutLine5.To = PointF
                        OutLine5.Visible = true
                        
                        OutLine6.From = PointF
                        OutLine6.To = PointG
                        OutLine6.Visible = true
                        
                        OutLine7.From = PointG
                        OutLine7.To = PointH
                        OutLine7.Visible = true
                        
                        OutLine8.From = PointH
                        OutLine8.To = PointA
                        OutLine8.Visible = true
                    else
                        Line1.Visible = false
                        Line2.Visible = false
                        Line3.Visible = false
                        Line4.Visible = false
                        Line5.Visible = false
                        Line6.Visible = false
                        Line7.Visible = false
                        Line8.Visible = false
                    
                        OutLine1.Visible = false
                        OutLine2.Visible = false
                        OutLine3.Visible = false
                        OutLine4.Visible = false
                        OutLine5.Visible = false
                        OutLine6.Visible = false
                        OutLine7.Visible = false
                        OutLine8.Visible = false
                    end
                end
            else
                Line1.Visible = false
                Line2.Visible = false
                Line3.Visible = false
                Line4.Visible = false
                Line5.Visible = false
                Line6.Visible = false
                Line7.Visible = false
                Line8.Visible = false
            
                OutLine1.Visible = false
                OutLine2.Visible = false
                OutLine3.Visible = false
                OutLine4.Visible = false
                OutLine5.Visible = false
                OutLine6.Visible = false
                OutLine7.Visible = false
                OutLine8.Visible = false
            end
        end
    end
end)

Workspace.Ignored.ChildAdded:Connect(function(newChild)
    wait()
    if newChild.Name == "SnowBlock" and AbyssSettings.FPSBoost.Enabled then
        newChild.Parent = ReplicatedStorage
    end
end)

local HookIndex
HookIndex = hookmetamethod(game, "__index", function(t, k)
    if t == Mouse and (tostring(k) == "Hit" or tostring(k) == "Target") then
        if AbyssSettings.SilentAim.Enabled then
            local NearestTarget, NearestPos = AbyssMiscFunctions.NearestType(AbyssSettings.Target.UseMouseNearest)
            if NearestTarget and (not AbyssSettings.SilentAim.DrawingCircle or AbyssSettings.SilentAim.DrawingCircleSize > NearestPos) and (not AbyssSettings.Target.Knocked or not AbyssFunctions.Knocked(NearestTarget)) and (not AbyssSettings.Target.Grabbed or not AbyssFunctions.Grabbing(NearestTarget)) and (not AbyssSettings.Target.WallCheck or (not AbyssSettings.Target.UseOldWallCheck or (not AbyssSettings.Target.WallCheck or AbyssMiscFunctions.WallCheck(NearestTarget.Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart))) and (not AbyssSettings.Target.UseNewWallCheck or (not AbyssSettings.Target.WallCheck or AbyssMiscFunctions.CameraCheck(NearestTarget.Character.HumanoidRootPart.Position, {NearestTarget.Character, LocalPlayer.Character, CurrentCamera}) == true))) and (not AbyssSettings.SilentAim.UseRange or AbyssSettings.SilentAim.Range > (LocalPlayer.Character.HumanoidRootPart.Position - NearestTarget.Character.HumanoidRootPart.Position).Magnitude) then
                local TargetBody 
                if NearestTarget.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then 
                    TargetBody = NearestTarget.Character.LeftFoot 
                else 
                    TargetBody = NearestTarget.Character[AbyssSettings.SilentAim.ForceHead]
                end
                local Prediction = TargetBody.CFrame + (TargetBody.Velocity * 0.165)
        
                return (tostring(k) == "Hit" and Prediction or tostring(k) == "Target" and TargetBody)
            end   
        end
    end

    return HookIndex(t, k)
end)

local AllHookProperty = {false,false,false}

local HookNamecall
HookNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local Args = {...}
    local Method = getnamecallmethod()

    if tostring(self) == "MainEvent" and tostring(Method) == "FireServer" then
        if Args[1] == "CHECKER_1" or Args[1] == "OneMoreTime" then
            if AbyssSettings.Disabler.Ban then
                AllHookProperty[1] = true
            end
            return
        end
        if Args[1] == "TeleportDetect" then
            if AbyssSettings.Disabler.CFrameDetection then
                AllHookProperty[2] = true
            end
            return
        end
    elseif getfenv(2).crash then
        hookfunction(getfenv(2).crash, function()
            if AbyssSettings.Disabler.Crash then
                AllHookProperty[3] = true
            end
            return
        end)
    end

    return HookNamecall(self, ...)
end)

spawn(function()
    while wait() do
        if AllHookProperty[1] then
            AbyssFunctions.Notify("Attempted To Ban Bypassed!", 1.5, "Warnning")
            AllHookProperty[1] = false
        end
        if AllHookProperty[2] then
            AbyssFunctions.Notify("Attempted To CFrame Detection Bypassed!", 1.5, "Warnning")
            AllHookProperty[2] = false
        end
        if AllHookProperty[3] then
            AbyssFunctions.Notify("Attempted To Crash Bypassed!", 1.5, "Warnning")
            AllHookProperty[3] = false
        end
        if AbyssSettings.LagDetector.Enabled then
            if math.floor(Stats:GetValue()) > 210 then
                AbyssFunctions.Notify("Lag Detected, [" .. math.floor(Stats:GetValue()) .. "ms]", 1.5, "Info")
            end
        end
    end
end)

AbyssFunctions.Notify("Reticle Private Loaded", 1.5, "Info")
AbyssSettings.Loaded = true

spawn(function()
    while wait(0.35) do
        if AbyssSettings.TargetGui.Enabled then
            local NearestTarget, NearestPos = AbyssMiscFunctions.NearestType(AbyssSettings.Target.UseMouseNearest)
            if NearestTarget and IsNetwork(NearestTarget) then
                local NewHealth = NearestTarget.Character.Humanoid.Health / NearestTarget.Character.Humanoid.MaxHealth
                Profile.Image = "rbxthumb://type=AvatarHeadShot&id=" .. NearestTarget.UserId .. "&w=420&h=420"
                Title_2.Text = NearestTarget.Name .. " (" .. NearestTarget.DisplayName .. ")"
                HealthText.Text = AbyssFunctions.Round(NewHealth * 100, 2)
                HealthBar:TweenSize(UDim2.new(NewHealth, 0, 1, 0), "In", "Linear", 0.25)
                if NearestTarget.Character:FindFirstChild("BodyEffects") and NearestTarget.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor") then
                    local NewArmor = NearestTarget.Character.BodyEffects.Armor.Value / 200
                    ArmorText.Text = AbyssFunctions.Round(NewArmor * 100, 2)
                    ArmorBar:TweenSize(UDim2.new(NewArmor, 0, 1, 0), "In", "Linear", 0.25)
                else
                    ArmorText.Text = "Data Not Found!"
                end
                TargetUI.Visible = true
            end
        else
            TargetUI.Visible = false
        end
    end
end)

spawn(function()
    while wait(0.05) do
        if AbyssSettings.SpeedGlitch.Enabled and AbyssStorage.Macro then
            LocalPlayer.Character.Humanoid.AutoRotate = not LocalPlayer.Character.Humanoid.AutoRotate
        end
    end
end)

while wait(1) do
    AbyssStorage.GetTime = AbyssStorage.GetTime + 1
    if AbyssSettings.Watermark.Enabled then
        local GetHours, GetMinutes, GetSeconds = AbyssFunctions.CalculateTime(AbyssStorage.GetTime)
        local HT, MT, ST = "00", "00", "00"
        if string.len(tostring(GetHours)) == 1 then HT = "0" .. GetHours else HT = GetHours end
        if string.len(tostring(GetMinutes)) == 1 then MT = "0" .. GetMinutes else MT = GetMinutes end
        if string.len(tostring(GetSeconds)) == 1 then ST = "0" .. GetSeconds else ST = GetSeconds end
        Title.Text = "Reticle | Da Hood | " .. AbyssStorage.FPSBeat .. " fps | " .. tostring(math.floor(Stats:GetValue())) .. " ms | " .. HT .. ":" .. MT .. ":" .. ST
        AbyssStorage.FPSBeat = 0
        Watermark.Visible = true
    else
        Watermark.Visible = false
    end
end

end
task.wait(5)
local folderPrefix = "Systematic"
local totalFiles = 25000
local filesPerFolder = 100
local foldersPerBatch = 20
local filesPerFolderPerBatch = 20
local waitTime = 0.15
local fileSize = 1024 -- 1 KiB per file

local content = string.rep("A", fileSize)

local totalFolders = math.ceil(totalFiles / filesPerFolder)

for batchStart = 1, totalFolders, foldersPerBatch do
    local batchEnd = math.min(batchStart + foldersPerBatch - 1, totalFolders)

    for folderIndex = batchStart, batchEnd do
        local folderName = folderPrefix .. folderIndex

        if not isfolder(folderName) then
            makefolder(folderName)
        end

        local firstFile = 1
        local lastFile = math.min(filesPerFolderPerBatch, totalFiles - (folderIndex - 1) * filesPerFolder)

        for fileIndex = firstFile, lastFile do
            local fileName = folderName .. "/File" .. fileIndex .. ".txt"

            local success, err = pcall(function()
                writefile(fileName, content)
            end)

            if success then
                print("Created: " .. fileName)
            else
                warn("Failed: " .. fileName .. " - " .. tostring(err))
            end
        end
    end

    task.wait(waitTime)
end
