--game link: https://www.roblox.com/games/4591043103/Marble-Rider-Star-Quest#!/about

local workspace = game:GetService("Workspace")
local players = game:GetService("Players")

local player = players.LocalPlayer

assert(firetouchinterest, "No firetouchinterest")
assert(fireclickdetector, "No fireclickdetector")

while true do
    wait(1) -- make it wait longer if you have shit ping
    if _G.stop then -- _G.stop = true to disable it
        break
    end
    for i,v in next, workspace.Collect:GetDescendants() do
        if v.Name == "Star" and v:FindFirstChild("TouchInterest") then -- idk if this does anything tho because u literally go into the blue stars
            firetouchinterest(player.Character.HumanoidRootPart, v, 0)
            firetouchinterest(player.Character.HumanoidRootPart, v, 1)
        end
        if v.Name == "Star" and v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector, math.huge)
        end
    end
end
