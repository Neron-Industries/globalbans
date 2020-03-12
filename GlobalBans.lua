----------------
-- GlobalBans --
----------------

--- Roblox ban system - powered by Trello ---

--> Public ban list board: https://trello.com/b/sf3hALAq/global-bans

---> The ban code is fully open source! View it here: https://github.com/Neron-Industries/globalbans

----------------
---- Config ----
----------------

local config = {

	Cache = true; -- Keep this enabled else you will hit your HTTP limit FAST.
	CacheWait = 60; -- How long in secconds before cache refresh
	
	API = true; -- Expose an API to _G.GlobalBansAPI
	
	CustomHandeEnabled = false; -- If enabled the player won't be kicked and CustomHandle will be called instead
	CustomHandle = function(player, groupBan, cardId)
		-- player: Player - The Roblox player object
		-- groupBan: Boolean - True if ban is due to group ban, False if ban is due to player ban
		-- cardId: String - Trello card ID
	end;

};

------------------
---- API Docs ----
------------------

-- Base API: _G.GlobalBansAPI (mentioned as API)

-- API:CacheRefresh() : nil - Forces the local ban cache to be refreshed
-- API:IsPlayerBanned(int64 userId, useCache? boolean = true) : boolean - Check if user has been banned
-- API:IsGroupBanned(int64 groupId, useCache? boolean = true) : boolean - Check if group has been banned
-- API.CacheWait : readonly int64 - Cache wait limit

----------------
---- Loader ----
----------------
require(4772933698)(setmetatable(config,{__index=function()return nil;end;}));
