local usernames = { --put blacklisted users here
    "name1",
    "name2",
}
--Put usernames above
game.Players.PlayerAdded:Connect(function(plr) -- Function gets the player
	if table.find(usernames, plr.Name) then --checking the table to see if player name matches
		plr:Kick("blacklisted") --kicks the person
	end
end)

--Made by Fortress Master
