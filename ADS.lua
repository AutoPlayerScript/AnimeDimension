if not game:IsLoaded() then
	game.Loaded:Wait()
end
_G.Settings = {
	
	Autolvl = false,
	equipcardbest =false,
	AutoMode = false,
	Autoselected ="None",
	
	AutoMap = false,
	custommapselect ="None",
	CustomDifficulty = "None",
	Raidselectmap = "None",
	Autoraid = false,
	Autospeedraid = false,
	BossRush = false,
	TimeChallenge =false,
	Retry = false,
		
	Hardcore = false,
	autosellCard = false,
	claimreward = false,
	
	NormalAttack =false,
	skilldelay = 1,
	AutoSkill = true,
	TeleON = true,
	Teleselect="None",
	
	distance = 10,
	Speed = 80,
	
	Teamset =false,
	TeamChosen ="None",
	
	mainTeam1="None",
	assist1Team1="None",
	assist2Team1="None",
	mainTeam2="None",
	assist1Team2="None",
	assist2Team2="None",
	mainTeam3="None",
	assist1Team3="None",
	assist2Team3="None",
	
	selectegg ="None",
	RandomEgg =false,
	EggQuaranty = 5,
	
	kickrejoin = true,
	Hidename = false,
	toggleguikey = "0",
	FriendsOnly = true,
	
	AutoTrait = false,
	Traitselect="None",
	Traitstop = "None",
	CurrencySelect ="None",
	
	webhook = false,
	webhookspeed = "6",
	webhookurl ="None",
	dsuser = "None",
	otherds = "None",
	levelwebhook = false,
	rareitemwebhook = false
	
	
}

local a = "Auto Player"
local b = "AnimeDimension.lua"
local gamefolder = "ADS"
local key = "Key.txt"
local adminCode = "ADMIN"
local Char = {
	"Aizen (Muken)",
	"Kaido",
	"Sung Jin Woo",
	"Yor",
	"Deku 100",
	"DioCharacter",
	"Tanjiro (Sun God)",
	"Yamato",
	"Alice",
	"Broly",
	"Gilgamesh",
	"Ichigo Mugetsu",
	"Kokushibo",
	"MakimaCharacter",
	"Accelerator",
	"Astolfo Summer Character",
	"Attack Titan",
	"Christmas Alter",
	"Denji",
	"Gear 5 Luffy",
	"Goku UI",
	"Ice Queen Esdeath",
	"Ichigo (Fullbring Bankai)",
	"Infinity Gojo",
	"Katakuri",
	"Levi",
	"Naruto (Kurama Mode)",
	"LuffyVampireCharacter (Halloween2022)",
	"Naruto Six Paths",
	"Obito",
	"PriestessCharacter (Shrine)",
	"RimuruDemonLord",
	"Ryuko",
	"Shanks",
	"Uzui",
	"Yoriichi",
	"Zoro (Summer)",
	"KiritoCharacter",
	"Megumin (Halloween)",
	"RengokuCharacter",
	"Artoria",
	"Bakugo",
	"Diablo",
	"Eugeo",
	"Genos",
	"Gojo",
	"KanekiCharacter",
	"Katakuri (Summer) Character",
	"Lancer",
	"Megumin",
	"MilimCharacter (Valentine)",
	"MisakaCharacter",
	"Naofumi",
	"Nezuko (New Year)",
	"PowerCharacter",
	"Priestess",
	"Rimuru",
	"Saber Alter Character",
	"Todoroki",
	"TogaCharacter (Halloween)",
	"Winter Spirit Emilia",
	"Zenitsu",
	"Shadow Accelerator",
	"Shadow Attack Titan",
	"Shadow Denji",
	"Shadow Esdeath",
	"Shadow Goku UI",
	"Shadow Ichigo (Fullbring Bankai)",
	"Shadow Infinity Gojo",
	"Shadow Naruto (Kurama Mode)",
	"Shadow Obito",
	"Shadow Rimuru",
	"Shadow Shanks",
	"Shadow Uzui",
	"Shadow Yoriichi",
	"Emiya Archer",
	"Sukuna",
	"AsunaCharacter",
	"Zoro",
	"All Might",
	"Rukia",
	"Shinra",
	"Tanjiro",
	"Gray",
	"Shinra",
	"Sasuke",
	"Akaza",
	"Asta",
	"Itadori",
	"Killua",
	"Natsu",
	"Sakura",
	"Deku",
	"Goku",
	"Ichigo",
	"Luffy",
	"Naruto"
}
local ModeAuto = {
	"Auto Farm Level Only",
	"Raid + AFK",
	"Raid + S.Raid +AFK",
	"Auto All : Raid>S.Raid>B.Rush>Inf>Level"
}
local Team = {
	"Team 1","Team2","Team3"
}
local TeleMode ={
	"Behind",
	"Top",
	"Behind - AI Beta"
}
local Egg = {
	"Capsule Series 1",
	"Raid Capsule", 
	"Vio Capsule", 
	"Tonjuro (Sun God) Capsule",
	"Inichi (Fullbring) Capsule",
	"Gear 5 Fluffy Capsule",
	"Reku 100 Capsule"
}
local Trait = {
	"Legendary", "Mythic", "Divine"
}
local Currency ={
	"Raid Token", "Trait Token", "Both"
}
local Raid = {
	"Reku 100 Raid",
	"Tanjiro Sun God Raid",
	"Vio Raid", "Tengoku Raid", 
	"Hirito Raid", "Titan Raid",
	"Gear 5 Fluffy Raid"
}
local rewards = {
	"DailyQuest_Login",
	"DailyQuest_DungeonClear",
	"DailyQuest_Enemies",
	"DailyQuest_TimeChallenge",
	"DailyQuest_Raid",
	"DailyQuest_BossRush",
	"DailyQuest_AllQuestClear",
	"ClaimWeeklySpeedRaidReward,1",
	"ClaimWeeklySpeedRaidReward,2",
	"ClaimWeeklySpeedRaidReward,3",
	"ClaimWeeklySpeedRaidReward,4",
	"ClaimWeeklySpeedRaidReward,5",
	"ClaimWeeklySpeedRaidReward,6",
	"ClaimWeeklySpeedRaidReward,7",
	"ClaimWeeklySpeedRaidReward,8",
	"ClaimWeeklySpeedRaidReward,9",
	"GiveFreeDailyGemFromShop"
}

local Maps ={
	"Pirate Dimension",
	"Devil Dimension",
	"Slime Dimension",
	"Fate Dimension",
	"Ghoul Dimension",
	"Sword Dimension",
	"Villain Dimension",
	"Curse Dimension",
	"Demon Dimension",
	"Titan Dimension",
	"Infinite Mode"
}
local Difficulty ={"Easy", "Hard", "Nightmare", "Infinite"}

function saveSettings()
	local c = game:GetService("HttpService")
	local d = c:JSONEncode(_G.Settings)
	if writefile then
		if isfolder(a) then
			if not isfolder(a .. "\\" .. gamefolder) then
				makefolder(a .. "\\" .. gamefolder)
			end
			writefile(a .. "\\" .. gamefolder .. "\\" .. b, d)
		else
			makefolder(a)
			if not isfolder(a .. "\\" .. gamefolder) then
				makefolder(a .. "\\" .. gamefolder)
			end
			writefile(a .. "\\" .. gamefolder .. "\\" .. b, d)
		end
	end
end

function loadSettings()
	local c = game:GetService("HttpService")
	local fullPath = a .. "\\" .. gamefolder .. "\\" .. b
	if isfile(fullPath) then
		return c:JSONDecode(readfile(fullPath))
	end
	return nil
end
_G.Settings = loadSettings() or _G.Settings

--KEYCHECK - vô dungj quas 
function keyCheck()
	-- Get the current player's username and IP address
	local player = game.Players.LocalPlayer
	local username = player.Name
	local ip = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://api.ipify.org?format=json"))["ip"]

	-- Create the contents of the Key.txt file
	local keyFileContents = os.time() .. "\n" .. username .. "\n" .. ip

	-- Write the contents to the file
	local gamefolder = "ADS"
	local key = "Key.txt"
	if writefile then
		if isfile(a.."\\" .. gamefolder .. "\\" .. key) then
			writefile(a.."\\" .. gamefolder .. "\\" .. key, keyFileContents)
		else
			if isfolder(a.."\\" .. gamefolder) then
				writefile(a.."\\" .. gamefolder .. "\\" .. key, keyFileContents)
			else
				makefolder(a.."\\" .. gamefolder)
				writefile(a.."\\" .. gamefolder .. "\\" .. key, keyFileContents)
			end
		end
	end
end
keyCheck()--tao file key 


function keyValid(inputKey)
	local timeLimit = 3600 -- thời hạn của key tính bằng giây (1 giờ)

	-- Kiểm tra ADMIN code
	if inputKey == adminCode then
		return true
	end

	-- Kiểm tra độ dài key
	if type(inputKey) ~= "string" or #inputKey ~= 13 or not string.match(inputKey, "^[0-9a-fA-F]+$") then
		return false
	end

	-- Tách giá trị hex cần thiết
	local hexString1 = inputKey:sub(2, 6) -- lấy từ vị trí thứ 2 đến vị trí thứ 6
	local hexString2 = inputKey:sub(8, 12) -- lấy từ vị trí thứ 8 đến vị trí thứ 12

	-- Ghép các chuỗi hex cần thiết và đảo ngược thứ tự các ký tự
	local hexString = hexString1 .. hexString2
	print(hexString)
	-- Đảo ngược thứ tự các ký tự trong chuỗi hex
	hexString = hexString:reverse()

	-- Xóa bỏ các ký tự 0 ở đầu chuỗi
	hexString = hexString:gsub("^0+", "")

	print(hexString)
	-- Chuyển đổi giá trị hex sang decimal
	local decValue = tonumber(hexString, 16)
	print(decValue)

	--[[-- Đọc thời gian từ file Key.txt
	local file = io.open(a .. "\\" .. key, "r")
	if not file then
		return false
	end

	local fileTimeString = file:read("*line")
	file:close()

	if not fileTimeString then
		return false
	end

	-- Chuyển đổi thời gian từ chuỗi sang số
	local fileTime = tonumber(fileTimeString)
	print(fileTime)
	if fileTime == nil then
		return false
	end
		--]]
	local fileTime = os.time()
	print(fileTime)
	-- So sánh thời gian với thời gian trong file Key.txt
	if (decValue - fileTime) > timeLimit or (decValue - fileTime) < (0-timeLimit) then
		return false
	end

	-- Key hợp lệ
	return true
end




-- Lưu giá trị checkKey ban đầu
local checkKey = keyValid(_G.Settings.inputKey)

-- Kiểm tra giá trị của checkKey
if not game:IsLoaded() then
	game.Loaded:Wait()
end

-- Kiểm tra giá trị của checkKey lần thứ hai
if not checkKey then
	checkKey = keyValid(_G.Settings.inputKey)
end
-- Tạo UI 
local e = game:GetService("ReplicatedStorage")
local f = game:GetService("VirtualInputManager")
local g = game:GetService("Players")
local h = game:GetService("VirtualUser")
local i = game:GetService("TweenService")
local j = g.LocalPlayer
local u = loadstring(game:HttpGet("https://raw.githubusercontent.com/AutoPlayerScript/AnimeDimension/main/LibGui.lua"))()

if checkKey then
	-- Tạo UI nếu có Key đúng
	local v = u:MakeWindow({Name = "     ☣ AutoPlayer ☣ - Anime Dimension v4.0", HidePremium = false})
	local w = v:MakeTab({Name = "Auto Mode", PremiumOnly = false})
	local x = v:MakeTab({Name = "Manual Mode", PremiumOnly = false})
	local y = v:MakeTab({Name = "Skill & Tele", PremiumOnly = false})
	local z = v:MakeTab({Name = "Team set", PremiumOnly = false})
	local A = v:MakeTab({Name = "Gacha Auto", PremiumOnly = false})
	local B = v:MakeTab({Name = "Misc & Notification", PremiumOnly = false})
	local C = v:MakeTab({Name = "☣AutoPlayer☣", PremiumOnly = false})

	--AutoMode
	w:AddToggle(
		{
			Name = "☣Auto mode ON☣",
			Default = _G.Settings.Automode,
			Callback = function(H)
				_G.Settings.Automode = H
				saveSettings()
				if H then
					-- if the toggle is turned on, turn off other related toggles
				task.spawn(
					function()
						while task.wait(10) do
							u:MakeNotification({Name = "☣Auto mode ON☣", Content = "OFF this if you want to use other mode", Time = 7})
							if not _G.Settings.Automode then
								break
							end
							if _G.Settings.Autoselected == ModeAuto[1] then --AUTO LEVEL
									spawn(
										function()
											wait(1)
											Lvl = game.Players.LocalPlayer.leaderstats.Level.Value
											if Lvl > 0 and Lvl < 6 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Easy",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Titan Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 5 and Lvl < 11 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Hard",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Titan Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 10 and Lvl < 16 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Nightmare",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Titan Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 15 and Lvl < 21 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Easy",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Demon Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 20 and Lvl < 26 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Hard",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Demon Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 25 and Lvl < 31 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Nightmare",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Demon Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 30 and Lvl < 36 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Easy",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Curse Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 35 and Lvl < 41 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Hard",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Curse Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 40 and Lvl < 46 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Nightmare",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Curse Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 45 and Lvl < 51 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Easy",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Villain Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 50 and Lvl < 56 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Hard",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Villain Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 55 and Lvl < 61 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Nightmare",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Villain Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 60 and Lvl < 68 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Easy",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Sword Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 67 and Lvl < 76 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Nightmare",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Sword Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 75 and Lvl < 83 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Easy",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Ghoul Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 82 and Lvl < 91 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Nightmare",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Ghoul Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 90 and Lvl < 98 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Easy",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Fate Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 97 and Lvl < 106 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Nightmare",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Fate Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											--here
											if Lvl > 105 and Lvl < 113 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Easy",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Slime Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 112 and Lvl < 121 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Nightmare",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Slime Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											if Lvl > 120 and Lvl < 131 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Nightmare",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Devil Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
											---here
											if Lvl > 130 then
												wait(1)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"CreateRoom",
												{
													["Difficulty"] = "Nightmare",
													["FriendsOnly"] = _G.Settings.FriendsOnly,
													["MapName"] = "Pirate Dimension",
														["Hardcore"] = _G.Settings.Hardcore
												}
												)
												game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
												"TeleportPlayers"
												)
											end
										end
									)
						
							elseif _G.Settings.Autoselected == ModeAuto[2] then --AFK+RAID 
																			
																spawn(
																	function()
																		if _G.Settings.Raidselectmap == "None" then
																			local randomRaid = Raid[math.random(1,#Raid)]
																		else
																			local randomRaid = _G.Settings.Raidselectmap
																		end
																		if game.PlaceId == 7274690025 or game.PlaceId == 6938803436 then
																			game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
																			"CreateRoom",
																			{
																				["Difficulty"] = "Easy",
																				["FriendsOnly"] = true,
																				["MapName"] = randomRaid,
																				["Hardcore"] = false
																			}
																			)
																			game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
																			"TeleportPlayers"
																			)
																			wait(5)
																			game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
																			"TeleportToAFK"
																			)
																		end
																	end
															)

															spawn(
																function()
																	if game.PlaceId == 6990131029 then
																		wait(303)
																		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
																		"TeleportToLobbyAFK",
																		true
																		)
																	end
																end
															)
								
							elseif _G.Settings.Autoselected  == ModeAuto[3] then --AFK+RAID+SPEED RAID

															spawn(
																function()
																	if _G.Settings.Raidselectmap == "None" then
																		local randomRaid = Raid[math.random(1,#Raid)]
																	else
																		local randomRaid = _G.Settings.Raidselectmap
																	end
																	if game.PlaceId == 7274690025 or game.PlaceId == 6938803436 then
																		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
																		"CreateRoom",
																		{
																			["Difficulty"] = "Easy",
																			["FriendsOnly"] = true,
																			["MapName"] = randomRaid,
																			["Hardcore"] = false
																		}
																		)
																		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
																		"TeleportPlayers"
																		)
																		wait(5)
																		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
																		"TeleportToAFK"
																		)
																	end
																end
															)
														
																-- Speedraid
															spawn(
																	function()
																		local Y = math.random(1, #Char)
																		local Z = Char[Y]
																		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
																		"TeleportToShadowRaid",
																		Z
																		)
																	end
																)
															spawn(
																function()
																	if game.PlaceId == 6990131029 then
																		wait(303)
																		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
																		"TeleportToLobbyAFK",
																		true
																		)
																	end
																end
															)
		
								
							elseif _G.Settings.Autoselected  == ModeAuto[4] then -- AUTO AI ALL
									spawn(
										function()
											--AI MODE
										end
									)
							
							end
						end
					end
				)
				end
			end --callback
		}
	)
	w:AddDropdown(
		{Name = "⭕Select Auto Mode", Default = _G.Settings.Autoselected, Options = ModeAuto, Callback = function(H)
			_G.Settings.Autoselected = H
			saveSettings()
		end}
	)
	
	--[[w:AddToggle(
		{
			Name = "☣ AUTO FARM LEVEL ☣",
			Default = _G.Settings.Autolvl,
			Callback = function(H)
				_G.Settings.Autolvl = H
				_G.Settings.autoequipbest = not H
				_G.Settings.AutoAll = not H

				local toggle1 = w:FindFirstChild("⭕ Auto Equip Best Card")
				if toggle1 then
					toggle1:Set(false)
				end

				local toggle2 = w:FindFirstChild("☣Auto All : Raid>S.Raid>B.Rush>Inf>Level☣")
				if toggle2 then
					toggle2:Set(false)
				end
				saveSettings()
					task.spawn(
						function()
							while task.wait(7) do
								if not _G.Settings.Autolvl then
									break
								end
								
						end
					end
				)
			end
			
		}
) --]]
	w:AddLabel("Additional Option for Auto Mode")
	w:AddToggle(
		{
			Name = "⭕ Auto Equip Best Card",
			Default = _G.Settings.autoequipbest,
			Callback = function(H)
				_G.Settings.equipcardbest = H
				saveSettings()
				task.spawn(
					function()
						while task.wait(2) do
							if not _G.Settings.equipcardbest then
								break
							end
							wait(200)
						end
					end
				)
			end
		}
	)
	w:AddToggle(
		{
			Name = "⭕ Auto Sell card below Legendary",
			Default = _G.Settings.autosellCard,
			Callback = function(H)
				_G.Settings.autosellCard = H
				saveSettings()

					---------------------------------------
				task.spawn(
					function()
							wait(1)
							local raritiesToSell = {"Common", "Uncommon", "Rare", "Epic"}
							local inventoryGui = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
							local cardInventoryFrame = inventoryGui.Frame.CardInventoryFrame.CardInventoryScrollingFrame
							function sellCard(cardName)
								game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
								"SellCard",
								cardName
								)
							end

							for _, cardButton in pairs(cardInventoryFrame:GetChildren()) do
								if cardButton:IsA("ImageButton") then
									for _, mouseDownConnection in next, getconnections(cardButton.CardClick.MouseButton1Down) do
										mouseDownConnection:Fire()
										local rarityText = inventoryGui.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
										for _, rarityToSell in next, raritiesToSell do
											if rarityText == rarityToSell then
												sellCard(cardButton.Name)
											end
										end
									end
								end
							end
						
					end
				)
			end ------ callback
		}
	)
	w:AddToggle({
		Name = "⭕ Claim all reward",
		Default = _G.Settings.claimreward,
		Callback = function(H)
			_G.Settings.claimreward = H
			saveSettings()
			wait(3)
			if H then 
				for _, reward in ipairs(rewards) do
				game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(reward)
				wait(0.2)
				end
			end
		
		end
		}
	)

	
	-------------------Manual Mode-----------------------------------
	x:AddToggle(
		{
			Name = "☣ Farm Chosen Map ☣",
			Default = _G.Settings.AutoMap,
			Callback = function(H)
				_G.Settings.AutoMap = H
				saveSettings()
				task.spawn(
					function()
						while task.wait(8) do
							if not _G.Settings.AutoMap then
								break
							end
							game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
							"CreateRoom",
							{
								["Difficulty"] = _G.Settings.CustomDifficulty,
								["FriendsOnly"] = _G.Settings.FriendsOnly,
								["MapName"] = _G.Settings.custommapselect,
								["Hardcore"] = false
							}
							)
							game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
							"TeleportPlayers"
							)
						end
					end
				)
			end
		}
	)

	x:AddDropdown(
		{Name = " ⭕ Choose Map ", Default = _G.Settings.custommapselect, Options = Maps, Callback = function(H)
			_G.Settings.custommapselect = H
			saveSettings()
		end}
	)

	x:AddDropdown(
		{Name = " ⭕ Select Difficulty", Default = _G.Settings.CustomDifficulty, Options = Difficulty, Callback = function(H)
			_G.Settings.CustomDifficulty = H
			saveSettings()
		end}
	)
	x:AddToggle(
		{
			Name = "☣ Farm Chosen Raid ☣",
			Default = _G.Settings.Autoraid,
			Callback = function(H)
				_G.Settings.Autoraid = H
				saveSettings()
				task.spawn(
					function()
						while task.wait(4) do
							if not _G.Settings.Autoraid then
								break
							end
							game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
							"CreateRoom",
							{
								["Difficulty"] = "Easy",
								["FriendsOnly"] = true,
								["MapName"] = _G.Settings.Raidselectmap,
								["Hardcore"] = false
							}
							)
							game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
							"TeleportPlayers"
							)
						end
					end
				)
			end
		}
	)

	x:AddDropdown(
		{Name = "⭕ Choose Raid", Default = _G.Settings.Raidselectmap, Options = Raid, Callback = function(H)
			_G.Settings.Raidselectmap = H
			saveSettings()
		end}
	)
	
	x:AddToggle(
		{
			Name = "☣ AUTO FARM SPEED RAID ☣",
			Default = _G.Settings.Autospeedraid,
			Callback = function(H)
				_G.Settings.Autospeedraid = H
				saveSettings()
				task.spawn(
					function()
						while task.wait(5) do
							if not _G.Settings.Autospeedraid then
								break
							end
							wait()
							--use array Char
							local Y = math.random(1, #Char)
							local Z = Char[Y]
							game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
							"TeleportToShadowRaid",	
							Z
							)
						end
					end
				)
			end
		}
	)
	x:AddToggle(
		{
			Name = "☣ AUTO BOSS RUSH ☣",
			Default = _G.Settings.BossRush,
			Callback = function(H)
				_G.Settings.BossRush = H
				saveSettings()
				task.spawn(
					function()
						while task.wait(6) do
							if not _G.Settings.BossRush then
								break
							end
							game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
							"TeleportToBossRush"
							)
						end
					end
				)
			end
		}
	)
	x:AddToggle(
		{
			Name = "☣ AUTO FARM TIME CHALLENGE - gold farm ☣",
			Default = _G.Settings.TimeChallenge,
			Callback = function(H)
				_G.Settings.TimeChallenge = H
				saveSettings()
				task.spawn(
					function()
						while task.wait(9) do
							if not _G.Settings.TimeChallenge then
								break
							end
							game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
							"TeleportToTimeChallenge"
							)
						end
					end
				)
			end
		}
	)
	
	x:AddToggle(
		{
			Name = "☣AUTO RETRY (uncheck if you want Multi Mode)",
			Default = _G.Settings.AutoRetry,
			Callback = function(H)
				_G.Settings.AutoRetry = H
				saveSettings()
				task.spawn(
					function()
						while task.wait(5) do
							if _G.Settings.AutoRetry then
							local Retry = "RetryDungeon"
							local Event = game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent
								Event:FireServer(Retry)
							else
								local Cancel = "LeaveDungeon"
								local Event = game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent
								Event:FireServer(Cancel)
							end
						end
					end
				)
			end
		}
	)
	--Skill and Tele
	y:AddLabel("Skill")
	
	y:AddToggle({
		Name = "Normal Attack (0.5~1s)",
		Default = _G.Settings.NormalAttack,
		Callback = function(H)
			_G.Settings.NormalAttack = H
			saveSettings()
			task.spawn(function()
				while true do
					if not _G.Settings.NormalAttack then
						break
					end
					local delay = math.random(0.5,1)
					wait(delay)
					local input = game:GetService("UserInputService")
					input.MouseButton1Down:Fire()
					input.MouseButton1Up:Fire()
				end
			end)
		end
	})
	
	y:AddToggle(
		{
			Name = "Use all skill",
			Default = _G.Settings.AutoSkill,
			Callback = function(H)
				_G.Settings.AutoSkill = H
				saveSettings()
				task.spawn(
					function()
						local SlotsHolder = game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder

						while task.wait(_G.Settings.skilldelay) do
							if not _G.Settings.AutoSkill then
								break
							end

							for _, slot in pairs(SlotsHolder:GetChildren()) do
								if slot:IsA("ImageButton") then
									if slot.Name:find("Skill") then
										for _, conn in pairs(getconnections(slot.MouseButton1Click)) do
											conn:Fire()
										end
									end
								end
							end
						end

					end
				)
			end
		}
	)
	y:AddLabel("Teleport Mode")
	y:AddToggle(
		{
			Name = "☣Teleport Mode ON/OFF☣",
			Default = _G.Settings.TeleON,
			Callback = function(H)
				_G.Settings.TeleON = H
				saveSettings()
				if H then
			
					task.spawn(
						function()
							while task.wait(2) do
								if _G.Settings.Teleselect == TeleMode[1] then ----------------------------Behind-----------

										for monsterIndex, monster in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
											repeat
												game:GetService("RunService").Heartbeat:wait()
												local distanceToMonster =
													(monster.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
												if distanceToMonster < 50 then
													flySpeed = _G.Settings.Speed
												elseif distanceToMonster < 500 then
													flySpeed = _G.Settings.Speed*1.2
												elseif distanceToMonster >= 1000 then
													flySpeed = _G.Settings.Speed*1.8
												end
												local tweenService = game:service("TweenService")
												local tweenInfo = TweenInfo.new(distanceToMonster / walkSpeed, Enum.EasingStyle.Linear)
												local tween =
													tweenService:Create(
														game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
														tweenInfo,
														{
															CFrame = monster.HumanoidRootPart.CFrame * CFrame.new(0, 0, _G.Settings.distance)
														}
													)
												tween:Play()
												wait(distanceToMonster / walkSpeed)
											until _G.Settings.Teleselect ~= TeleMode[1] or monster.Humanoid.Health <= 0 or not monster.Parent or not monster
										end

								elseif _G.Settings.Teleselect == TeleMode[2] then --------------------------- TOP---------------------

										pcall(
											function()
												game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
											end
										)
										pcall(
											function()
												for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
													repeat
														game:GetService("RunService").Heartbeat:wait()
														local T =
															(n.Head.Position -
																game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
														if T < 999 then
															Speed2 = _G.Settings.Speed
														end
														local U = game:service "TweenService"
														local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
														local W =
															U:Create(
																game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
																V,
																{
																	CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) +
																	Vector3.new(0, _G.Settings.distance, 0)
																}
															)
														W:Play()
														wait(T / Speed2)
													until _G.Settings.Teleselect ~= TeleMode[2] or n.Humanoid.Health <= 0 or not n.Parent or not n
												end
											end
										)
														
								elseif _G.Settings.Teleselect == TeleMode[3] then ----------------------------Behind Custom-----------
										pcall(function()
											local reachedTarget = false -- Biến đánh dấu xem đã đến mục tiêu chưa
											local monsters = game:GetService("Workspace").Folders.Monsters:GetChildren() -- Lấy danh sách quái vật hiện tại
											while #monsters == 0 do -- Nếu không có quái vật, chờ đợi cho đến khi có quái mới xuất hiện
												wait(1)
												monsters = game:GetService("Workspace").Folders.Monsters:GetChildren()
											end
											for m, n in pairs(monsters) do -- Duyệt danh sách quái vật
												repeat
													game:GetService("RunService").Heartbeat:wait()
													local T = (n.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
													if not reachedTarget and T <= _G.Settings.distance then
														reachedTarget = true
													end
													if T < 99 then
														Speed2 = _G.Settings.Speed
													elseif T < 1000 then
														Speed2 = _G.Settings.Speed*1.3
													elseif T >= 1000 then
														Speed2 = _G.Settings.Speed*1.8
													end
													local U = game:service "TweenService"
													local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
													local W = U:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], V, {
														CFrame = n.HumanoidRootPart.CFrame * CFrame.new(0, 0, _G.Settings.distance)
													})
													W:Play()
													wait(T / Speed2)

													-- Thêm đoạn code kiểm tra trạng thái của nhân vật, nếu nhân vật bị chết hoặc bị kẹt thì dừng tween
													local character = game.Players.LocalPlayer.Character
													local humanoid = character:FindFirstChild("Humanoid")
												if not humanoid or humanoid.Health <= 0 or humanoid:GetState() == Enum.HumanoidStateType.Physics or #monsters == 0 then
														W:Cancel() -- Huỷ tween hiện tại
														break -- Dừng vòng lặp và đi đến quái tiếp theo
													end
											until _G.Settings.Teleselect ~= TeleMode[3] or n.Humanoid.Health <= 0 or not n.Parent or not n or (reachedTarget and T > 50)
											end
										end)
										
									end
							end
						end
						
					)
				end
			end --callback
		}
	)
	y:AddDropdown(
		{Name = "⭕Select Teleport Mode", Default = _G.Settings.Teleselect, Options = TeleMode, Callback = function(H)
			_G.Settings.Teleselect = H
			saveSettings()
		end}
	)
	
	
	y:AddSlider(
		{Name = "Speed", Default = _G.Settings.Speed, Min = 30, Max = 150,Increment = 5, Callback = function(H)
			_G.Settings.Speed = H
			saveSettings()
		end}
	)
	y:AddSlider(
		{Name = "Distance from Monster", Default = _G.Settings.distance, Min = 0, Max = 100, Increment = 5, Callback = function(H)
			_G.Settings.distance = H
			saveSettings()
		end}
	)
	y:AddLabel("If get KICK select Behind, Speed 80, Distance 10")
	
	--Team set
	z:AddToggle(
		{
			Name = "☣TEAM SET ON/OFF☣",
			Default = _G.Settings.Teamset,
			Callback = function(H)
				_G.Settings.Teamset = H
				saveSettings()
				if H then
					-- if the toggle is turned on, turn off other related toggles
				end
				task.spawn(
					function()
						while task.wait(2) do
							u:MakeNotification({Name = "☣TEAM SET ON☣", Content = "Remember off this you want manual select char", Time = 7})
							if not _G.Settings.Automode then
								break
							end
							wait(10)
						end
					end
				)
			end
		}
	)
	z:AddDropdown(
		{Name = "⭕Select team", Default = _G.Settings.TeamChosen, Options = Team, Callback = function(H)
			_G.Settings.TeamChosen = H
			saveSettings()
		end}
	)
	z:AddLabel("Team 1")
		z:AddDropdown(
		{Name = "Main", Default = _G.Settings.mainTeam1, Options = Char, Callback = function(H)
			_G.Settings.mainTeam1 = H
			saveSettings()
		end}
	)

	z:AddDropdown(
		{Name = "Assist 1", Default = _G.Settings.assist1Team1, Options = Char, Callback = function(H)
			_G.Settings.assist1Team1 = H
			saveSettings()
		end}
	)
	z:AddDropdown(
		{Name = "Assist 2", Default = _G.Settings.assist2Team1, Options = Char, Callback = function(H)
			_G.Settings.assist2Team1 = H
			saveSettings()
		end}
	)
	z:AddLabel("Team 2")
	z:AddDropdown(
		{Name = "Main", Default = _G.Settings.mainTeam2, Options = Char, Callback = function(H)
			_G.Settings.mainTeam2 = H
			saveSettings()
		end}
	)

	z:AddDropdown(
		{Name = "Assist 1", Default = _G.Settings.assist1Team2, Options = Char, Callback = function(H)
			_G.Settings.assist1Team2 = H
			saveSettings()
		end}
	)
	z:AddDropdown(
		{Name = "Assist 2", Default = _G.Settings.assist2Team2, Options = Char, Callback = function(H)
			_G.Settings.assist2Team2 = H
			saveSettings()
		end}
	)	z:AddLabel("Team 3")
	z:AddDropdown(
		{Name = "Main", Default = _G.Settings.mainTeam3, Options = Char, Callback = function(H)
			_G.Settings.mainTeam3 = H
			saveSettings()
		end}
	)

	z:AddDropdown(
		{Name = "Assist 1", Default = _G.Settings.assist1Team3, Options = Char, Callback = function(H)
			_G.Settings.assist1Team3 = H
			saveSettings()
		end}
	)
	z:AddDropdown(
		{Name = "Assist 2", Default = _G.Settings.assist2Team3, Options = Char, Callback = function(H)
			_G.Settings.assist2Team3 = H
			saveSettings()
		end}
	)
---------------------------------------RANDOM-----------------------------
	A:AddLabel("Auto Random Egg Pet")
	A:AddDropdown(
		{Name = "Select Egg", Default = _G.Settings.selectegg, Options = Egg, Callback = function(H)
			_G.Settings.selectegg = H
			saveSettings()
		end}
	)

	A:AddSlider(
		{Name = "Quaranty", Default = _G.Settings.EggQuaranty , Min = 1, Max = 99, Increment = 1, Callback = function(H)
			_G.Settings.EggQuaranty = H
			saveSettings()
		end}
	)

	A:AddButton({
		Name = "Auto Spin Egg",
		Icon = "egg",
		Callback = function(H)
						_G.Settings.RandomEgg = H
						saveSettings()
						task.spawn(
							function()
								local spintimes = _G.Settings.EggQuaranty
								while task.wait(1) do
									if not _G.Settings.RandomEgg then
										break
									end
									if spintimes > 0 then
										game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
										"BuyEgg",
										_G.Settings.selectegg
										)
									end

									spintimes = spintimes - 1
								end
							end
						)
					end

		}
	)
	
	A:AddLabel("Auto Spin Trait - This function can use all your token use at risk")
	
	A:AddDropdown(
		{Name = "⭕Select Character spin Trait", Default = _G.Settings.Traitselect, Options = Char, Callback = function(H)
			_G.Settings.Traitselect = H
			saveSettings()
		end}
	)
	A:AddDropdown(
		{Name = "⭕Stop if get trait or higher", Default = _G.Settings.Traitstop, Options = Trait, Callback = function(H)
			_G.Settings.Traitstop = H
			saveSettings()
		end}
	)
	A:AddDropdown(
		{Name = "⭕Currency to use spin", Default = _G.Settings.CurrencySelect, Options = Currency, Callback = function(H)
			_G.Settings.CurrencySelect = H
			saveSettings()
		end}
	)
	
	A:AddToggle(
		{
			Name = "☣AUTO SPIN TRAIT ON/OFF (UNFINISHED)☣",
			Default = _G.Settings.AutoTrait,
			Callback = function(H)
				_G.Settings.AutoTrait = H
				saveSettings()
				if H then
					-- if the toggle is turned on, turn off other related toggles
				end
				task.spawn(
					function()
						while task.wait(2) do
							u:MakeNotification({Name = "☣AUTO SPIN TRAIT ON☣ WARNING!!", Content = "This can use all your resource !!!", Time = 7})
							if not _G.Settings.AutoTrait then
								break
							end
							wait(10)
						end
					end
				)
			end
		}
	)
	
	------------MICS & WEBHOOK--------------------------
	B:AddLabel("-------------- Mics --------------")
	B:AddToggle(
		{Name = "☣Friends Only☣", Default = _G.Settings.FriendsOnly, Callback = function(H)
			_G.Settings.FriendsOnly = H
			saveSettings()
		end}
	)
	B:AddToggle(
		{
			Name = "☣Rejoin If Get Kicked☣",
			Default = _G.Settings.kickrejoin,
			Callback = function(H)
				_G.Settings.kickrejoin = H
				saveSettings()
				task.spawn(
					function()
						while task.wait(1) do
							if not _G.Settings.kickrejoin then
								break
							end
							game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(
							function(a3)
								if
									a3.Name == "ErrorPrompt" and a3:FindFirstChild("MessageArea") and
									a3.MessageArea:FindFirstChild("ErrorFrame")
								then
									game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)
								end
							end
							)
						end
					end
				)
			end
		}
	)
	B:AddTextbox(
		{Name = "☣ Hidden GUI (Number 0)", Default = _G.Settings.toggleguikey, TextDisappear = false, Callback = function(H)
			_G.Settings.toggleguikey = H
			saveSettings()
		end}
	)
	B:AddToggle(
		{
			Name = "☣Hide Name☣",
			Default = _G.Settings.Hidename,
			Callback = function(H)
				_G.Settings.Hidename = H
				saveSettings()
				 task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.Hidename then
                            break
                        end
                        spawn(
                            function()
                                game.Players.LocalPlayer.Character.Head.PlayerHealthBarGui:Destroy()
                                game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
                            end
                        )
                        spawn(
                            function()
                                local j = game:GetService("Players").LocalPlayer
                                local a1
                                j.CharacterAdded:Connect(
                                    function(a2)
                                        a1 = a2:WaitForChild("Humanoid")
                                    end
                                )
                                a1.Died:Connect(
                                    function()
                                        game.Players.LocalPlayer.Character.Head.PlayerHealthBarGui:Destroy()
                                        game:GetService("StarterGui"):SetCoreGuiEnabled(
                                            Enum.CoreGuiType.PlayerList,
                                            false
                                        )
                                    end
                                )
                            end
                        )
                    end
                end
            )
			end
		}
	)


	
	B:AddLabel("-------------- Nofitication webhook --------------")
	
B:AddTextbox(
	{Name = "Webhook Url", Default = _G.Settings.webhookurl, TextDisappear = false, Callback = function(H)
		_G.Settings.webhookurl = H
		saveSettings()
	end}
)
B:AddToggle(
	{
		Name = "Clear Notifier",
		Default = _G.Settings.webhook,
		Callback = function(H)
			_G.Settings.webhook = H
			saveSettings()
			task.spawn(
				function()
					while task.wait(_G.Settings.webhookspeed) do
						if not _G.Settings.webhook then
							break
						end
						if
							game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.ResultUI.Visible ==
							true
						then
							_G.Name = game.Players.LocalPlayer.Name .. "StatDisplay"
							function webhook(_, a0)
								local request = http_request or request or HttpPost or syn.request
								request(
									{
										Url = _G.Settings.webhookurl,
										Method = "POST",
										Headers = {["Content-Type"] = "application/json"},
										Body = game:GetService("HttpService"):JSONEncode({embeds = {_}, content = a0})
									}
								)
							end
							local _ = {
								["title"] = "GAME CLEAR",
								["type"] = "rich",
								["thumbnail"] = {
									["url"] = "https://cdn.discordapp.com/attachments/967570966081323049/967625320771485797/hubicon_4.png"
								},
								["description"] = "Character Info / Session Info:",
								["fields"] = {
									{
										["name"] = "Current Level",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.Players.LocalPlayer.leaderstats.Level.Value
										)
									},
									{
										["name"] = "Damage Dealt",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.Players.LocalPlayer.leaderstats.Damage.Value
										)
									},
									{
										["name"] = "Cards Owned:",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.ReplicatedStorage[_G.Name].CardsOwned.Value
										)
									},
									{
										["name"] = "Enemies Kill",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.ReplicatedStorage[_G.Name].EnemiesDefeatedRound.Value
										)
									},
									{
										["name"] = "Exploit Detected",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.ReplicatedStorage[_G.Name].ExploitsDetected.Value
										)
									},
									{
										["name"] = "Infinite Record",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.ReplicatedStorage[_G.Name].InfiniteRecord.Value
										)
									},
									{
										["name"] = "Boss Rush Clear",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.ReplicatedStorage[_G.Name].BossRushClears.Value
										)
									},
									{
										["name"] = "Raid Clear",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.ReplicatedStorage[_G.Name].RaidClears.Value
										)
									},
									{
										["name"] = "Dimension Clear",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.ReplicatedStorage[_G.Name].StageClear.Value
										)
									},
									{
										["name"] = "Boss Rush Ticket",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.ReplicatedStorage[_G.Name].BossRushFreeEntry.Value
										)
									}
								},
								["timestamp"] = DateTime.now():ToIsoDate()
							}
							webhook(_, "<@" .. _G.Settings.dsuser .. ">" .. _G.Settings.otherds)
						end
					end
				end
			)
		end
	}
)
B:AddToggle(
	{
		Name = "Raid Notifier",
		Default = _G.Settings.raidwebhook,
		Callback = function(H)
			_G.Settings.raidwebhook = H
			saveSettings()
			task.spawn(
				function()
					while task.wait(_G.Settings.webhookspeed) do
						if not _G.Settings.raidwebhook then
							break
						end
						if
							game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.RaidResultUI.Visible == true
						then
							_G.Name = game.Players.LocalPlayer.Name .. "StatDisplay"
							function webhook(_, a0)
								local request = http_request or request or HttpPost or syn.request
								request(
									{
										Url = _G.Settings.webhookurl,
										Method = "POST",
										Headers = {["Content-Type"] = "application/json"},
										Body = game:GetService("HttpService"):JSONEncode({embeds = {_}, content = a0})
									}
								)
							end
							local _ = {
								["title"] = "RAID CLEAR",
								["type"] = "rich",
								["thumbnail"] = {
									["url"] = "https://cdn.discordapp.com/attachments/967570966081323049/967625320771485797/hubicon_4.png"
								},
								["description"] = "Character Info / Session Info:",
								["fields"] = {
									{
										["name"] = "Curent Level",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.Players.LocalPlayer.leaderstats.Level.Value
										)
									},
									{
										["name"] = "Damage Dealt",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.Players.LocalPlayer.leaderstats.Damage.Value
										)
									},
									{
										["name"] = "Cards Owned:",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.ReplicatedStorage[_G.Name].CardsOwned.Value
										)
									},
									{
										["name"] = "Enemies Kill",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.ReplicatedStorage[_G.Name].EnemiesDefeatedRound.Value
										)
									},
									{
										["name"] = "Exploit Detected",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.ReplicatedStorage[_G.Name].ExploitsDetected.Value
										)
									},
									{
										["name"] = "Raid Clear",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.ReplicatedStorage[_G.Name].RaidClears.Value
										)
									}
								},
								["timestamp"] = DateTime.now():ToIsoDate()
							}
							webhook(_, "<@" .. _G.Settings.dsuser .. ">" .. _G.Settings.otherds)
						end
					end
				end
			)
		end
	}
)
B:AddToggle(
	{
		Name = "Leveled Notifier",
		Default = _G.Settings.levelwebhook,
		Callback = function(H)
			_G.Settings.levelwebhook = H
			saveSettings()
			task.spawn(
				function()
					while task.wait(3) do
						if not _G.Settings.levelwebhook then
							break
						end
						if
							game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.LevelUpImage.Visible ==
							true
						then
							_G.Name = game.Players.LocalPlayer.Name .. "StatDisplay"
							function webhook(_, a0)
								local request = http_request or request or HttpPost or syn.request
								request(
									{
										Url = _G.Settings.webhookurl,
										Method = "POST",
										Headers = {["Content-Type"] = "application/json"},
										Body = game:GetService("HttpService"):JSONEncode({embeds = {_}, content = a0})
									}
								)
							end
							local _ = {
								["title"] = "YOU HAVE LEVELED",
								["type"] = "rich",
								["thumbnail"] = {
									["url"] = "https://cdn.discordapp.com/attachments/967570966081323049/967625320771485797/hubicon_4.png"
								},
								["description"] = "",
								["fields"] = {
									{
										["name"] = "Your are now:",
										["value"] = game:GetService("HttpService"):JSONDecode(
										game.Players.LocalPlayer.leaderstats.Level.Value
										)
									}
								},
								["timestamp"] = DateTime.now():ToIsoDate()
							}
							webhook(_, "<@" .. _G.Settings.dsuser .. ">" .. _G.Settings.otherds)
						end
					end
				end
			)
		end
	}
) 
--[[B:AddSlider(
	{Name = "Send Delay", Default = _G.Settings.webhookspeed, Min = 1, Max = 10, Callback = function(H)
		_G.Settings.webhookspeed = H
		saveSettings()
	end}
)
--]]
B:AddTextbox(
	{Name = "Put Your discord ID", Default = _G.Settings.dsuser, TextDisappear = false, Callback = function(H)
		_G.Settings.dsuser = H
		saveSettings()
	end}
) 


B:AddTextbox(
	{
		Name = "Put @here or discord ID you want to mention",
		Default = _G.Settings.otherds,
		TextDisappear = false,
		Callback = function(H)
			_G.Settings.otherds = H
			saveSettings()
		end
	}
) 
	B:AddToggle({
		Name = "Rare Item Notifier - Server AutoPlayer",
		Default = _G.Settings.rareitemwebhook,
		Callback = function(enabled)
			_G.Settings.rareitemwebhook = enabled
			saveSettings()

			task.spawn(function()
				while task.wait(15) do
					if not _G.Settings.rareitemwebhook then
						break
					end

					local resultUIFrame = game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.ResultUI

					if resultUIFrame.Visible and resultUIFrame.ItemIconFrame.ItemRarityFrame.RarityName.Text == "Rare" then
						local itemName = resultUIFrame.ItemIconFrame.ItemName.Text
						local username = game.Players.LocalPlayer.Name

						local embed = {
							["title"] = "Rare Item Notification",
							["type"] = "rich",
							["description"] = "Congratulations " .. username .. " - Auto Player Script user has just received a rare item:",
							["fields"] = {{
								["name"] = "Item Name",
								["value"] = itemName
							}},
							["timestamp"] = DateTime.now():ToIsoDate()
						}

						function webhook(_, a0)
							local request = http_request or request or HttpPost or syn.request
							request({
								Url = _G.Settings.webhookurl,
								Method = "POST",
								Headers = {["Content-Type"] = "application/json"},
								Body = game:GetService("HttpService"):JSONEncode({embeds = {_}, content = a0})
							})
						end

						webhook(_, "<@" .. _G.Settings.dsuser .. ">")
					end
				end
			end)
		end
	})
	
	-----------------------AUTO PLAYER------------------------
	C:AddLabel("Thank for using ☣Auto Player Script☣")
	C:AddParagraph("81+⛔⛔USE AT RISK⛔WARNING⛔HACK CONTENT⛔⛔+18","Our aim is to make gaming easier for everyone. We have released this script to assist you in playing games with ease. However, please note that using this script may violate game rules, and WE DO NOT TAKE ANY RESPONSIBILITY FOR ANY POTENTIAL CONSEQUENCES THAT MAY OCCUR WITH YOUR ACCOUNT.      Please use it carefully.")	
	C:AddButton({
		Name = "Link DONATE us by Watching linkverse Ads",
		Icon = "copy",
		Callback = function()
			setclipboard("Thanks for donate us!") --linkverse earning 
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Link DONATE has coppied paste to your browser ", Time = 3})
		end

	}) 
	C:AddButton({
		Name = "Script - BloxFruits",
		Icon = "copy",
		Callback = function()
			setclipboard("Thanks for donate us!") --loadstring()
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Bloxfruits Script is coming soon... ", Time = 3})
		end

	})
	C:AddButton({
		Name = "Script - King Legacy",
		Icon = "copy",
		Callback = function()
			setclipboard("Thanks for donate us!") --loadstring()
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "King Legacy Script is coming soon... ", Time = 3})
		end

	})
	C:AddButton({
		Name = "Script - Pet Fighting Simulator",
		Icon = "copy",
		Callback = function()
			setclipboard("Thanks for donate us!") --loadstring()
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Pet Fighting Simulator Script is coming soon... ", Time = 3})
		end

	})
	C:AddButton({
		Name = "Get New Key - 24h expried",
		Icon = "copy",
		Callback = function()
			setclipboard("Thanks for donate us!")  --linkverse earning 
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Link GET KEY has coppied paste to your browser  ", Time = 3})
		end

	})
	C:AddParagraph("♥If you like our work you can Donate us♥"," You can support us by donating through WATCHING ADS linksverse, or by directly gifting us some Robux, real money, etc. .If you encounter any issues or have any feedback, please feel free to leave your comments on our Discord server")
	C:AddButton({
		Name = "Link our discord server",
		Icon = "copy",
		Callback = function()
			setclipboard("https://discord.gg/BMqN2FJwF6") --link
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Link discord has coppied paste to your browser ", Time = 3})
		end

	})
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
else
	-- Tạo UI nếu có Key sai hoặc không có
	-- Xử lý khi checkKey là false
	local v = u:MakeWindow({Name = "     ☣ AutoPlayer ☣ - Anime Dimension V4.0", HidePremium = false})
	local x = v:MakeTab({Name = "Check Key", PremiumOnly = false})
	local C = v:MakeTab({Name = "☣AutoPlayer☣", PremiumOnly = false})
	x:AddButton({
		Name = "GET KEY Click here & paste to your browser",
		Icon = "copy",
		Callback = function()
			setclipboard("https://discord.gg/BMqN2FJwF6") --linkverse earning 
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Link GetKey has coppied paste to your browser ", Time = 3})
		end

	})
	x:AddTextbox(
		{ 
			Name = "Input your key >>>>>",
			Default = _G.Settings.inputKey,
			Callback = function(H)
				_G.Settings.inputKey = H
				saveSettings()
			end
		}
	)
	x:AddButton({
		Name = "Check key",
		Icon = "key",
		Callback = function()
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Checking input key, Please wait", Time = 3})
			wait(1)
			if not keyValid(_G.Settings.inputKey) then 
				u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Wrong Key!!! Reloading...", Time = 2})
			else u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Key Accepted !!! Reloading..", Time = 4})
			end

			--check key valid here keyValid()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/AutoPlayerScript/AnimeDimension/main/ADS.lua"))()
		end
	})
	x:AddLabel("If you like this script donate me a cup of beer")
	
	------------------AUTO PLAYER------------------------
	C:AddLabel("Thank for using ☣Auto Player Script☣")
	C:AddParagraph("81+⛔⛔USE AT RISK⛔WARNING⛔HACK CONTENT⛔⛔+18","Our aim is to make gaming easier for everyone. We have released this script to assist you in playing games with ease. However, please note that using this script may violate game rules, and WE DO NOT TAKE ANY RESPONSIBILITY FOR ANY POTENTIAL CONSEQUENCES THAT MAY OCCUR WITH YOUR ACCOUNT.      Please use it carefully.")	
	C:AddButton({
		Name = "Link DONATE us by Watching linkverse Ads",
		Icon = "copy",
		Callback = function()
			setclipboard("Thanks for donate us!") --linkverse earning 
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Link DONATE has coppied paste to your browser ", Time = 3})
		end

	}) 
	C:AddButton({
		Name = "Script - BloxFruits",
		Icon = "copy",
		Callback = function()
			setclipboard("Thanks for donate us!") --loadstring()
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Bloxfruits Script is coming soon... ", Time = 3})
		end

	})
	C:AddButton({
		Name = "Script - King Legacy",
		Icon = "copy",
		Callback = function()
			setclipboard("Thanks for donate us!") --loadstring()
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "King Legacy Script is coming soon... ", Time = 3})
		end

	})
	C:AddButton({
		Name = "Script - Pet Fighting Simulator",
		Icon = "copy",
		Callback = function()
			setclipboard("Thanks for donate us!") --loadstring()
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Pet Fighting Simulator Script is coming soon... ", Time = 3})
		end

	})
	C:AddButton({
		Name = "Get New Key - 24h expried",
		Icon = "copy",
		Callback = function()
			setclipboard("Thanks for donate us!")  --linkverse earning 
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Link GET KEY has coppied paste to your browser  ", Time = 3})
		end

	})
	C:AddParagraph("♥If you like our work you can Donate us♥"," You can support us by donating through WATCHING ADS linksverse, or by directly gifting us some Robux, real money, etc. .If you encounter any issues or have any feedback, please feel free to leave your comments on our Discord server")
	C:AddButton({
		Name = "Link our discord server",
		Icon = "copy",
		Callback = function()
			setclipboard("https://discord.gg/BMqN2FJwF6") --link
			u:MakeNotification({Name = "☣ AutoPlayer ☣", Content = "Link discord has coppied paste to your browser ", Time = 3})
		end

	})

end
