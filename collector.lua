--game link: https://www.roblox.com/games/4591043103/Marble-Rider-Star-Quest#!/about


local workspace = game:GetService("Workspace")
local players = game:GetService("Players")

local player = players.LocalPlayer

assert(firetouchinterest, "No firetouchinterest")
assert(fireclickdetector, "No fireclickdetector")

while true do
    wait(1) -- make it wait longer if you have shit ping
    if _G.stop then -- run `_G.stop = true` to disable loop
        break
    end
    if player.Character and player.Character:FindFirstChild("Marble") then
        for i,v in next, workspace.Collect:GetDescendants() do
            if v.Name == "Star" and v:FindFirstChild("TouchInterest") then 
                player.Character.Marble.CFrame = v.CFrame + Vector3.new(0, 1, 0)
                firetouchinterest(player.Character.Marble, v, 0)
                firetouchinterest(player.Character.Marble, v, 1)
                task.wait(0.3)
            end
            if v.Name == "Star" and v:FindFirstChild("ClickDetector") then
                player.Character.Marble.CFrame = v.CFrame + Vector3.new(0, 1, 0)
                task.wait(0.3)
                fireclickdetector(v.ClickDetector, math.huge)
            end
        end
    end
end
