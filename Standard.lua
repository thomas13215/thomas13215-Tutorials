
local usernames = {
    "name1",
    "name2",
}
--Put usernames above

game.Players.PlayerAdded:Connect(function(plr) -- Function gets the player
	for i, v in pairs(usernames) do --Checking table
		if v == plr.Name then --If the player is whitelisted
			--insert function here
		end
	end
end)

--Made by Fortress Master
