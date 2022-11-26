--[[
    how to use:
        - execute
        - go in a marble
        - you die and others die too (just the way the game works)
--]]


local players = game:GetService("Players")
local player = players.LocalPlayer

while true do
    wait(1) -- leave this so u dont die too fast ig
    if _G.stop then
        break
    end
    if player.Character and player.Character:FindFirstChild("Marble") then
        for i,v in next, players:GetPlayers() do
            if v ~= player then
                local char = v.Character
                if char then
                    local root = char:FindFirstChild("HumanoidRootPart")
                    if root then
                        local marble = char:FindFirstChild("Marble")
                        if marble then
                            local touchinterest = marble:FindFirstChild("TouchInterest")
                            if touchinterest then
                                firetouchinterest(player.Character.Marble, marble, 0)
                                firetouchinterest(player.Character.Marble, marble, 1)
                            end
                        end
                    end
                end
            end
        end
    end
end
