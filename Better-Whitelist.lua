--This is a treat I've added, basically it's a better whitelist, that's all

local usernames = {
    "thomas13215",
    "name2",
}
--Put usernames above
game.Players.PlayerAdded:Connect(function(plr) -- Function gets the player
	if not table.find(usernames, plr.Name) then --Checks if player is in the table
		plr:Kick("Private game!") --If the player is not listed inside the table they are kicked
	end
end)

--Made by colbert2677
