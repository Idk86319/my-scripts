-- ===== PLACE CHECK =====
local allowedPlaces = {
    [129009554587176] = true,
    [76558904092080] = true
}

if not allowedPlaces[game.PlaceId] then
    warn("Script not allowed in this place:", game.PlaceId)
    return
end
-- =====THE SCRIPT=========

getgenv().request = http_request
http.request = http_request

loadstring(game:HttpGet("https://rawscripts.net/raw/The-Forge-BETA-PEPEHOOK-FREE-INSTANT-FORGE-SELL-ITEMS-ANYWHERE-71790"))()
