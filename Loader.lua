-- LocalScript inside a ScreenGui

local screenGui = script.Parent

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 500, 0, 300)
frame.Position = UDim2.new(0.5, -250, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -30, 0, 40)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "⚠️ Executor Not Supported"
title.Font = Enum.Font.GothamBold
title.TextSize = 24
title.TextColor3 = Color3.fromRGB(0, 255, 0)
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = frame

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.Text = "X"
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 20
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.BorderSizePixel = 0
closeButton.Parent = frame

local message = Instance.new("TextLabel")
message.Size = UDim2.new(1, -20, 0, 60)
message.Position = UDim2.new(0, 10, 0, 50)
message.BackgroundTransparency = 1
message.Text = "You're using an unsupported executor (Delta)."
message.Font = Enum.Font.Gotham
message.TextSize = 18
message.TextColor3 = Color3.fromRGB(255, 255, 255)
message.TextWrapped = true
message.TextYAlignment = Enum.TextYAlignment.Top
message.Parent = frame

local fixLabel = Instance.new("TextLabel")
fixLabel.Size = UDim2.new(1, -20, 0, 80)
fixLabel.Position = UDim2.new(0, 10, 0, 110)
fixLabel.BackgroundTransparency = 1
fixLabel.Text = "To fix:\n- Turn off anti-scam in Delta\n- Or use Krnl or Codex executor."
fixLabel.Font = Enum.Font.Gotham
fixLabel.TextSize = 18
fixLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
fixLabel.TextWrapped = true
fixLabel.TextYAlignment = Enum.TextYAlignment.Top
fixLabel.Parent = frame

local krnlButton = Instance.new("TextButton")
krnlButton.Size = UDim2.new(0.45, -10, 0, 40)
krnlButton.Position = UDim2.new(0.05, 0, 1, -60)
krnlButton.Text = "Copy Krnl Link"
krnlButton.Font = Enum.Font.GothamBold
krnlButton.TextSize = 18
krnlButton.TextColor3 = Color3.fromRGB(0, 0, 0)
krnlButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
krnlButton.Parent = frame

local codexButton = Instance.new("TextButton")
codexButton.Size = UDim2.new(0.45, -10, 0, 40)
codexButton.Position = UDim2.new(0.5, 10, 1, -60)
codexButton.Text = "Copy Codex Link"
codexButton.Font = Enum.Font.GothamBold
codexButton.TextSize = 18
codexButton.TextColor3 = Color3.fromRGB(0, 0, 0)
codexButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
codexButton.Parent = frame

-- Functionality
local krnlLink = "https://krnl.place"
local codexLink = "https://codex.lol"

krnlButton.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard(krnlLink)
		print("Krnl link copied.")
	else
		warn("Clipboard copy not supported.")
	end
end)

codexButton.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard(codexLink)
		print("Codex link copied.")
	else
		warn("Clipboard copy not supported.")
	end
end)

closeButton.MouseButton1Click:Connect(function()
	screenGui.Enabled = false
end)
