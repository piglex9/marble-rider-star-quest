local player = game:GetService("Players").LocalPlayer

while true do
    if player.Character:FindFirstChild("Nametag") then
        player.Character:FindFirstChild("Nametag"):Destroy()
    end
    task.wait()
end
