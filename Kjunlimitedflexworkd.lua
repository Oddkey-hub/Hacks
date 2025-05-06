-- Assuming you have a character and the animation ID
local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animation = Instance.new("Animation")
animation.AnimationId = "77727115892579"

-- Create the function that will play the animation
local function playAnimation()
    local animationTrack = humanoid:LoadAnimation(animation)
    animationTrack:Play()
end

-- Use loadstring to execute the function
local scriptToExecute = [[
    playAnimation()  -- Call the function inside the loadstring
]]

-- Execute the loadstring
local func = loadstring(scriptToExecute)
func()  -- This will play the animation
