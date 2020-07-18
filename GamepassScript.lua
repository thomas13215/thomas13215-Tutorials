local MarketPlaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
--Above is getting the needed services
local gamePassID = 00000000 -- Change this to your game pass id

function onPlayerSpawned(player) --creating the function
	
	local hasPass = false
	
	local success, message = pcall(function() --Check if the player owns the game pass
		hasPass = MarketPlaceService:UserOwnsGamePassAsync(player.userId, gamePassID)
		print("User owns gamepass!!!")
	end)
	
	
	if not success then --In case of an error, issue a warning and exit the function
		warn("Error with checking player with gamepass: " .. tostring(message))
		return
	end
	
	
	if hasPass == true then --if the player owns the gamepass then 
		game.Lighting["Tool"]:clone().Parent = player.Backpack --replace "Tool" with your tool in lighting
	end
end

game.Players.PlayerAdded:Connect(function(plr) --Getting the player
	plr.CharacterAdded:Connect(function() --Getting the character
		onPlayerSpawned(plr) --executing the function onto the player when they join
	end)
end)

Players.CharacterAdded:Connect(onPlayerSpawned) --Ignore

--Made by Fortress Master
