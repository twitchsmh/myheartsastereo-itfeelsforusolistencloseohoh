local badges = {}

for i, v in pairs(game.Players.LocalPlayer.PlayerGui.MainUI.LobbyFrame.Achievements.List:GetChildren()) do
    if v.ClassName == "ImageButton" then
        table.insert(badges, v.Name)
    end
end

while wait() do
    game:GetService("ReplicatedStorage"):WaitForChild("EntityInfo"):WaitForChild("FlexAchievement"):FireServer(badges[math.random(1, #badges)])
end
