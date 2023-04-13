for i, v in pairs(game.Workspace:GetDescendants()) do
    if v.ClassName == "Attachment" then
        wait(0.1)
        v.WorldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
end

game.Workspace.DescendantAdded:Connect(function(v)
    if v.ClassName == "Attachment" then
        wait(0.1)
        v.WorldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
end)
